package com.film.controller;

import com.film.model.Admin;
import com.film.model.Film;
import com.film.service.AdminService;
import com.film.service.FilmService;
import com.film.util.FilmResult;
import com.film.util.ValidatedEmail;
import com.film.util.ValidatedPhone;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/9.
 * 作用：管理员公用控制器
 */
@Controller
@RequestMapping("/adminCommon")
public class AdminCommonController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private FilmService filmService;

    // 登录页面
    @RequestMapping("/loginUI")
    public String loginUI(){
        return "behind/admin/loginUI";
    }

    // 登录验证
    @RequestMapping("/login")
    public String login(Admin admin, RedirectAttributes attributes, HttpSession session){
        admin.setPassword(DigestUtils.md5DigestAsHex(admin.getPassword().getBytes()));
        Admin login = adminService.login(admin);
        if (login == null){
            attributes.addFlashAttribute("result", "用户名或密码错误");
            return "redirect:/adminCommon/loginUI";
        }
        admin.setPassword(null);
        session.setAttribute("admin", login);
        return "redirect:/film/user/list";
    }

}
