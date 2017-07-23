package com.film.controller;

import com.film.model.Film;
import com.film.model.Types;
import com.film.service.FilmService;
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
import java.io.File;
import java.io.FileInputStream;
import java.util.List;
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
            String table = "";
            // 电影列表相关
            for (Film film : films.getData()) {
                String type = "";
                for (Types t : film.getTypesList()){
                    type += t.getTypeName()+" ";
                }
                table +=
                                "                            <tr id=\"filmTable\">\n" +
                                "                                <td>\n" +
                                "                                    <div id=\"uniform-titleCheck2\" class=\"checker\">\n" +
                                "                                        <span>\n" +
                                "                                            <input id=\"check_${"+film.getFilmid()+"}\" name=\"checkRow\" style=\"opacity: 0;\" type=\"checkbox\" value=\"${"+film.getFilmid()+"}\">\n" +
                                "                                        </span>\n" +
                                "                                    </div>\n" +
                                "                                </td>\n" +
                                "                                <td align=\"center\">\n" +
                                "                                    <img src=\""+request.getContextPath()+"/resources/behind/images/"+film.getImg()+"\" width=\"50px\" height=\"75px\" alt=\"图片无法显示\"/>\n" +
                                "                                </td>\n" +
                                "                                <td style=\"border-left-color: rgb(203, 203, 203);\" align=\"center\">"+film.getName()+"</td>\n" +
                                "                                <td align=\"center\">\n" +
                                "                                    "+type+
                                "                                </td>\n" +
                                "                                <td align=\"center\">"+film.getCreatetime()+"</td>\n" +
                                "                                <td align=\"center\">\n" +
                                "                                    <a class=\"smallButton\" href=\""+request.getContextPath()+"/film/filmInfo?id="+film.getFilmid()+"\" style=\"margin: 5px;\">\n" +
                                "                                        <img src=\""+request.getContextPath()+"/resources/behind/images/icons/dark/magnify.png\" alt=\"查看\">\n" +
                                "                                    </a>\n" +
                                "                                    <a class=\"smallButton\" href=\""+request.getContextPath()+"/film/updateFilmUI?id="+film.getFilmid()+"\" style=\"margin: 5px;\">\n" +
                                "                                        <img src=\""+request.getContextPath()+"/resources/behind/images/icons/color/pencil.png\" alt=\"修改\">\n" +
                                "                                    </a>\n" +
                                "                                    <a class=\"smallButton\" href=\"${pageContext.request.contextPath}/film/deleteFilm\" title=\"\" style=\"margin: 5px;\">\n" +
                                "                                        <img src=\""+request.getContextPath()+"/resources/behind/images/icons/dark/close.png\" alt=\"删除\">\n" +
                                "                                    </a>\n" +
                                "                                </td>\n" +
                                "                            </tr>\n";
            }

            // 底部分页信息相关
            String info = "<ul class=\"pages\" id=\"pagesInfo\">\n" +
                    "            <li>\n" +
                    "                <input class=\"basic\" value=\"第一页\" style=\"margin: 5px;\" onclick=\"page("+films.getFirstPage()+","+films.getPageSize()+")\" type=\"button\">\n" +
                    "            </li>\n" +
                    "            <li>\n" +
                    "                <input class=\"basic\" value=\"<\" style=\"margin: 5px;\" onclick=\"page("+films.getPrePage()+","+films.getPageSize()+")\" type=\"button\">\n" +
                    "            </li>\n" +
                    "            <li>\n" +
                    "                当前第"+films.getCurrentPage()+"页\n" +
                    "            </li>\n" +
                    "            &nbsp;\n" +
                    "            <li>\n" +
                    "                总共"+films.getTotalPage()+"页\n" +
                    "            </li>\n" +
                    "            <li>\n" +
                    "            <li>\n" +
                    "                <input class=\"basic\" value=\">\" style=\"margin: 5px;\" onclick=\"page("+films.getNextPage()+","+films.getPageSize()+")\" type=\"button\">\n" +
                    "            </li>\n" +
                    "            <li>\n" +
                    "                <input class=\"basic\" value=\"最后一页\" style=\"margin: 5px;\" onclick=\"page("+films.getTotalPage()+","+films.getPageSize()+")\" type=\"button\">\n" +
                    "            </li>\n" +
                    "            <li>\n" +
                    "                每页显示&nbsp;<input type=\"text\" id=\"my_size\" title=\"\" value="+films.getPageSize()+" onblur=\"selfPage()\" style=\"width: 30px; height: 20px;\"/>&nbsp;条\n" +
                    "            </li>\n" +
                    "            <li>\n" +
                    "                跳转到&nbsp;<input type=\"text\" id=\"my_page\" title=\"\" value="+films.getCurrentPage()+" onblur=\"selfPage()\" style=\"width: 30px; height: 20px;\"/>&nbsp;页\n" +
                    "            </li>\n" +
                    "        </ul>";
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

    // 电影详情
    @RequestMapping("/filmInfo")
    public String info(Integer id, Model model){
        Film film = filmService.selectByPrimaryKey(id);
        model.addAttribute("film", film);
        return "behind/film/info";
    }
}
