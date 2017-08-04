package com.film.controller;

import com.film.model.Discuss;
import com.film.model.Film;
import com.film.model.User;
import com.film.model.UserFilm;
import com.film.service.DiscussService;
import com.film.service.FilmService;
import com.film.service.UserFilmService;
import com.film.util.BehindAjaxResult;
import com.film.util.FilmResult;
import com.film.util.IDUtils;
import com.film.util.PageUtil;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.io.FileUtils;
import org.apache.poi.ss.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.util.UUID;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/12.
 * 作用：电影的控制器
 */
@RequestMapping("/film")
@Controller
public class FilmController {

    @Autowired
    private FilmService filmService;

    @Autowired
    private UserFilmService userFilmService;

    @Autowired
    private DiscussService discussService;

    // 新增电影
    @RequestMapping("/newFilm")
    public String newFilm(Film film, @RequestParam("imgs") CommonsMultipartFile imgs, String[] type, HttpServletRequest request, RedirectAttributes attributes){
        try {
            // 上传图片
            // 获取服务器路径
            ServletContext context = request.getSession().getServletContext();
            String realPath = context.getRealPath("/resources/behind/images");

            String originalFilename = imgs.getOriginalFilename();

            String newFileName = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
            // 复制文件
            File newFile = new File(realPath, newFileName);
            imgs.transferTo(newFile);

            film.setFilmid(IDUtils.genItemId());
            film.setImg(newFileName);

            // 插入信息
            filmService.insert(film, type);
            // 跳转时候带电影信息
            Film film1 = filmService.selectByPrimaryKey(film.getFilmid());
            attributes.addFlashAttribute("film", film1);
            return "redirect:/film/list";
        } catch (Exception e) {
            attributes.addFlashAttribute("result", "上传失败，请稍后再试");
            return "redirect:/film/newFilmUI";
        }
    }

    // 新增电影页面
    @RequestMapping("/newFilmUI")
    public String newFilmUI(){
        return "behind/film/newFilm";
    }

    // 修改电影页面
    @RequestMapping("/updateFilmUI")
    public String updateFilmUI(Integer id, Model model){
        Film film = filmService.selectByPrimaryKey(id);
        model.addAttribute("film", film);
        return "behind/film/updateUI";
    }

    // 修改电影
    @RequestMapping("/updateFilm")
    public String updateFilm(Film film, @RequestParam("imgs") CommonsMultipartFile imgs, String[] type, HttpServletRequest request, Model model){
        try {
            if (film == null || film.getCreatetime() == null || film.getName() == null || type == null || film.getActor() == null || film.getDirector() == null || film.getPrice() == null || film.getPoint()== null || film.getContry() == null || film.getIntroduction() == null){
                model.addAttribute("result", "信息不完整，请重新确认");
                return info(film.getFilmid(),model);
            }

            if (imgs != null && imgs.getSize() != 0) {
                // 获取服务器路径
                ServletContext context = request.getSession().getServletContext();
                String realPath = context.getRealPath("/resources/behind/images");

                String originalFilename = imgs.getOriginalFilename();

                String newFileName = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
                // 复制文件
                File newFile = new File(realPath, newFileName);
                imgs.transferTo(newFile);
                film.setImg(newFileName);
            }

            // 修改信息
            filmService.update(film,type);

            // 跳转回信息显示
            Film film1 = filmService.selectByPrimaryKey(film.getFilmid());
            return info(film1.getFilmid(), model);
        }catch (Exception e){
            e.printStackTrace();
            model.addAttribute("result","内部错误，请稍后再试");
            return updateFilmUI(film.getFilmid(), model);
        }
    }

    // 移除电影
    @RequestMapping("/deleteFilm")
    public String deleteFilm(Integer id){
        filmService.deleteByPrimaryKey(id);
        return "";
    }

    // 导入电影
    // 读取电影信息
    @RequestMapping(value = "/importFilms", method = RequestMethod.POST)
    public String importFilms(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request, RedirectAttributes attributes){
        if (file == null){
            attributes.addFlashAttribute("result", "上传文件为空");
            return "redirect:/film/list";
        }
        // CommonsMultipartFile转File
        DiskFileItem item = (DiskFileItem) file.getFileItem();
        File file1 = item.getStoreLocation();

        // 判断是否为excel文件
        if(file.getName().indexOf(".xls") == 0 || file.getName().indexOf(".xlsx") == 0){
            attributes.addFlashAttribute("result", "上传文件类型不符合");
            return "redirect:/film/list";
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file1);
            // 1、读取工作簿
            Workbook workbook = WorkbookFactory.create(file1);

            // 2、读取工作表
            Sheet sheet = workbook.getSheetAt(0);
            Film film;
            Row row;

            // 3、读取行，如果大于2行，那么就代表有数据
            if (sheet.getPhysicalNumberOfRows() > 2) {
                for (int i = 2; i < sheet.getPhysicalNumberOfRows(); i++) {
                    // 3.1、读取行
                    row = sheet.getRow(i);
                    film = new Film();
                    // 电影名
                    String name = row.getCell(0).getStringCellValue();
                    if (filmService.testFilmName(name) > 0){
                        continue;
                    }
                    film.setName(name);
                    // 电影类型
                    String[] types = row.getCell(1).getStringCellValue().split(" ");
                    // 导演
                    String director = row.getCell(2).getStringCellValue();
                    film.setDirector(director);
                    // 演员
                    String actor = row.getCell(3).getStringCellValue();
                    film.setActor(actor);
                    // 创建时间
                    row.getCell(4).setCellType(CellType.STRING);
                    film.setCreatetime(row.getCell(4).getStringCellValue());

                    // 图片
                    String img = row.getCell(5).getStringCellValue();
                    File filmImg = new File(img);
                    // 获取服务器地址
                    ServletContext context = request.getSession().getServletContext();
                    String realPath = context.getRealPath("/resources/behind/images");
                    // 新的图片名字
                    String originalFilename = filmImg.getName();
                    String newFileName = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
                    // 复制文件
                    File newFile = new File(realPath, newFileName);
                    FileUtils.copyFile(filmImg, newFile);
                    // 保存进对象
                    film.setFilmid(IDUtils.genItemId());
                    film.setImg(newFileName);

                    // 简介
                    String introduction = row.getCell(6).getStringCellValue();
                    film.setIntroduction(introduction);
                    // 热度
                    Double point = row.getCell(7).getNumericCellValue();
                    film.setPoint(point);
                    // 播放时间
                    String time = row.getCell(8).getStringCellValue();
                    film.setTime(time);
                    // 价格
                    Double price = row.getCell(9).getNumericCellValue();
                    film.setPrice(price);
                    // 国家
                    String contry = row.getCell(10).getStringCellValue();
                    film.setContry(contry);

                    // 保存
                    filmService.insert(film, types);
                }
            }
            workbook.close();
            fileInputStream.close();
            attributes.addFlashAttribute("result", "添加成功，已忽略部分数据");
            return "redirect:/film/list";
        }catch (Exception e){
            e.printStackTrace();
            attributes.addFlashAttribute("result", "内部错误");
            return "redirect:/film/list";
        }
    }

    // 电影列表--异步分页
    @RequestMapping("/ajaxList")
    @ResponseBody
    public FilmResult ajaxList(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "5")Integer size, HttpServletRequest request){
        try {
            PageUtil<Film> films = filmService.getListByAjax(page, size);
            // table相关
            String table = BehindAjaxResult.table(films,request);
            // 分页相关
            String info = BehindAjaxResult.page(films);

            return new FilmResult(200, table, info);
        } catch (Exception e){
            return new FilmResult(500, null, null);
        }
    }

    // 电影列表
    @RequestMapping("/list")
    public String list(Model model, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "5") Integer size){
        PageUtil<Film> films = filmService.getListByAjax(page, size);
        model.addAttribute("page", films);
        return "behind/film/list";
    }

    // 电影名的唯一性校验
    @RequestMapping(value = "/testFilmName", method = RequestMethod.POST)
    @ResponseBody
    public FilmResult testName(String name){
       int i = filmService.testFilmName(name);
        if (i > 0){
            return new FilmResult(404,null,null);
        }
        return new FilmResult(200,null,null);
    }

    // 后台电影详情
    @RequestMapping("/filmInfo")
    public String info(Integer id, Model model){
        Film film = filmService.selectByPrimaryKey(id);
        model.addAttribute("film", film);
        return "behind/film/info";
    }

    // 前台电影详情
    @RequestMapping("/frontInfo")
    public String frontInfo(Integer id, Model model, HttpSession session)throws Exception{
        Film film = filmService.selectByPrimaryKey(id);
        if (film == null){
            return "front/film/info";
        }
        User user = (User) session.getAttribute("user");
        if (user == null){
            model.addAttribute("userFilm",null);
        }
        else {
            UserFilm userFilm = userFilmService.select(new UserFilm(id, user.getUid()));
            model.addAttribute("userFilm", userFilm);
        }

        // 评论回复
        PageUtil<Discuss> discussPageUtil = discussService.selectDiscuss(id, 1, 5);
        model.addAttribute("discussPageUtil", discussPageUtil);

        model.addAttribute("film", film);
        model.addAttribute("discussPageUtil",discussPageUtil);
        return "front/film/info";
    }

    // 删除多个电影
    @RequestMapping("/deleteAll")
    @ResponseBody
    public FilmResult deleteAll(@RequestParam("films[]") Integer[] ids, HttpServletRequest request){
        try {
            filmService.removeAll(ids);
            PageUtil<Film> films = filmService.getListByAjax(1, 5);
            // table相关
            String table = BehindAjaxResult.table(films,request);
            // 分页相关
            String info = BehindAjaxResult.page(films);

            return new FilmResult(200, table, info);
        } catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, null, null);
        }
    }

    // 删除单个电影
    @RequestMapping("/deleteOne")
    @ResponseBody
    public FilmResult deleteAll(Integer id, HttpServletRequest request){
        try {
            filmService.deleteOne(id);
            PageUtil<Film> films = filmService.getListByAjax(1, 5);
            // table相关
            String table = BehindAjaxResult.table(films,request);
            // 分页相关
            String info = BehindAjaxResult.page(films);

            return new FilmResult(200, table, info);
        } catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, null, null);
        }
    }
}
