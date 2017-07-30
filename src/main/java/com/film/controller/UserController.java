package com.film.controller;

import com.film.model.Car;
import com.film.model.Order;
import com.film.model.User;
import com.film.model.UserFilm;
import com.film.service.CarService;
import com.film.service.OrderService;
import com.film.service.UserFilmService;
import com.film.service.UserService;
import com.film.util.BehindAjaxResult;
import com.film.util.FilmResult;
import com.film.util.PageUtil;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/12.
 * 作用：用户控制器
 */
@RequestMapping("/film/user")
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserFilmService userFilmService;

    @Autowired
    private CarService carService;

    @Autowired
    private OrderService orderService;

    // 用户列表
    @RequestMapping("/list")
    public String list(Model model, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "5") Integer size){
        List<User> users = userService.getUserListByTool(page, size);
        // 分页信息
        model.addAttribute("pageInfo", new PageInfo<>(users));
        model.addAttribute("userList",users);
        return "behind/user/list";
    }

    // 导出用户
    @RequestMapping("/export")
    public void export(HttpServletResponse response){
        try {
            // 获取用户列表
            List<User> users = userService.list();
            // 告诉浏览器，这是一个Excel的响应
            response.setContentType("application/x-excel");
            response.setHeader("Content-Disposition", "attachment;fileName=" + new String("用戶列表.xls".getBytes(), "ISO-8859-1"));
            // 获得一个输出流
            ServletOutputStream outputStream = response.getOutputStream();
            userService.export(users, outputStream);
            // 关闭流
            if(outputStream != null){
                outputStream.close();
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    // 后台查看用户信息
    @RequestMapping("/info")
    public String info(Integer id, Model model){
        User user = userService.selectByPrimaryKey(id);
        model.addAttribute("user",user);
        return "/behind/user/info";
    }

    // 前台查看用户信息
    @RequestMapping("userInfo")
    public String userInfo(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "5")Integer size, Integer uid, Model model){
        PageUtil<User> collection = userService.selectCollection(new UserFilm(uid, page, size));
        PageUtil<Car> cars = carService.selectCars(page, size, uid);
        PageUtil<Order> orders = orderService.selectOrderPage(page, size, uid);
        model.addAttribute("collection", collection);
        model.addAttribute("car",cars);
        model.addAttribute("orders",orders);
        return "/front/user/info";
    }

    // 修改昵称
    @RequestMapping("/updateName")
    public FilmResult updateName(String name, HttpSession session){
        User user = (User)session.getAttribute("user");
        user.setName(name);
        userService.updateByPrimaryKey(user);
        if (session.getAttribute("user") != null){
            session.removeAttribute("user");
            session.setAttribute("user", user);
        }
        return new FilmResult(200, null, null);
    }

    // 绑定邮箱页面
    @RequestMapping("connectEmailUI")
    public String connectEmailUI(){
        return "/front/user/connectEmail";
    }

    // 绑定邮箱
    @RequestMapping("/connectEmail")
    public String connectEmail(String code, String email, HttpSession session, RedirectAttributes attributes){
        try {
            if (!session.getAttribute("emailCode").equals(code)){
                attributes.addFlashAttribute("result", "验证码错误");
                return "redirect:/film/user/connectEmailUI";
            }
            User user = (User)session.getAttribute("user");
            user.setEmail(email);
            userService.updateByPrimaryKey(user);
            session.removeAttribute("user");
            session.setAttribute("user", user);
            return "redirect:/film/user/userInfo";
        }catch (Exception e){
            attributes.addFlashAttribute("result", "绑定失败，请稍后再试");
            return "redirect:/film/user/connectEmailUI";
        }

    }

    // 绑定手机页面
    @RequestMapping("connectPhoneUI")
    public String connectPhoneUI(){
        return "/front/user/connectPhone";
    }

    // 绑定手机
    @RequestMapping("/connectPhone")
    public String connectPhone(String code, String phone, HttpSession session, RedirectAttributes attributes){
        if (!session.getAttribute("msgCode").equals(code)){
            attributes.addFlashAttribute("result", "验证码错误");
            return "redirect:/film/user/connectPhoneUI";
        }
        try {
            User user = (User)session.getAttribute("user");
            user.setPhone(phone);
            userService.updateByPrimaryKey(user);
            session.removeAttribute("user");
            session.setAttribute("user", user);
            return "redirect:/film/user/userInfo";
        }catch (Exception e){
            e.printStackTrace();
            attributes.addFlashAttribute("result", "绑定失败，请稍后再试");
            return "redirect:/film/user/connectPhoneUI";
        }
    }

    // 手机解除绑定
    @RequestMapping("/removePhone")
    public String removePhone(String phone, String code, HttpSession session, RedirectAttributes attributes){
        try {
            if (!session.getAttribute("msgCode").equals(code)){
                attributes.addFlashAttribute("result", "验证码错误");
                return "redirect:/film/user/removePhoneUI";
            }
            if (userService.selectByPhone(phone) == 0){
                attributes.addFlashAttribute("result", "错误的手机号码");
                return "redirect:/film/user/removePhoneUI";
            }
            User user = (User) session.getAttribute("user");
            user.setPhone(null);
            userService.updateByPrimaryKey(user);
            session.removeAttribute("user");
            session.setAttribute("user", user);
            return "redirect:/film/user/userInfo";
        }catch (Exception e){
            attributes.addFlashAttribute("result", "解除失败，请稍后再试");
            return "redirect:/film/user/removePhoneUI";
        }
    }

    // 手机解除绑定页面
    @RequestMapping("/removeEmailUI")
    public String removeEmailUI(){
        return "front/user/removeEmail";
    }

    // 邮箱解除绑定页面
    @RequestMapping("/removePhoneUI")
    public String removePhoneUI(){
        return "front/user/removePhone";
    }

    // 邮箱解除绑定
    @RequestMapping("/removeEmail")
    public String removeEmail(String email, String code, HttpSession session, RedirectAttributes attributes){
        try {
            if (!session.getAttribute("emailCode").equals(code)){
                attributes.addFlashAttribute("result", "验证码错误");
                return "redirect:/film/user/removeEmailUI";
            }
            if (userService.selectByEmail(email) == 0){
                attributes.addFlashAttribute("result", "错误的邮箱");
                return "redirect:/film/user/removeEmailUI";
            }
            User user = (User) session.getAttribute("user");
            user.setEmail(null);
            userService.updateByPrimaryKey(user);
            session.removeAttribute("user");
            session.setAttribute("user", user);
            return "redirect:/film/user/userInfo";
        }catch (Exception e){
            e.printStackTrace();
            attributes.addFlashAttribute("result", "解除失败，请稍后再试");
            return "redirect:/film/user/removeEmailUI";
        }
    }

    // 收藏电影
    @RequestMapping("/collect")
    public String insertCollection(Integer filmId, Integer userId, Model model){
        userFilmService.insert(new UserFilm(filmId, userId));
        return userInfo(1,5,userId, model);
    }

    // 取消收藏
    @RequestMapping("/inCollect")
    @ResponseBody
    public FilmResult deleteCollection(Integer filmId, Integer userId, HttpSession session, HttpServletRequest request){
        try {
            if (filmId == null || userId == null) {
                return new FilmResult(500, "信息不完整", null);
            }
            userFilmService.delete(new UserFilm(filmId, userId));

            // 获取收藏记录
            PageUtil<User> userPageUtil = userService.selectCollection(new UserFilm(filmId, userId));
            String collect = BehindAjaxResult.collect(userPageUtil, request, session);

            // 获取收藏分页
            String page = BehindAjaxResult.collect_page(userPageUtil, userId);
            return new FilmResult(200,collect,page);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }

    // 收藏的分页
    @RequestMapping("/collectPage")
    @ResponseBody
    public FilmResult collectPage(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "5")Integer size, Integer uid, HttpServletRequest request, HttpSession session){
        try {
            if (uid == null) {
                return new FilmResult(500, "内部错误", null);
            }
            PageUtil<User> util = userService.selectCollection(new UserFilm(uid, page, size));
            String collect = BehindAjaxResult.collect(util, request, session);
            String collect_page = BehindAjaxResult.collect_page(util, uid);
            return new FilmResult(200, collect, collect_page);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }
}
