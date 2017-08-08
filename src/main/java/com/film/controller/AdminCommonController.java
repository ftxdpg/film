package com.film.controller;

import com.film.model.Admin;
import com.film.model.Film;
import com.film.model.User;
import com.film.service.AdminService;
import com.film.service.FilmService;
import com.film.util.FilmResult;
import com.film.util.ValidatedEmail;
import com.film.util.ValidatedPhone;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
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

    // 登录页面
    @RequestMapping("/loginUI")
    public String loginUI(){
        return "behind/admin/loginUI";
    }

    // 登录验证
    @RequestMapping("/login")
    public String login(Admin admin, RedirectAttributes attributes, HttpSession session){
        if (admin == null || admin.getPassword() == null || admin.getName() == null){
            attributes.addFlashAttribute("result", "管理员不存在或密码错误");
            return "redirect:/adminCommon/loginUI";
        }
        Subject u = SecurityUtils.getSubject();
        // 把密码和用户名封装为一个token
        UsernamePasswordToken token = new UsernamePasswordToken(admin.getName(), admin.getPassword());
        try {
            // 执行登录
            u.login(token);
            // 去除密码，然后session保存
            admin.setPassword(null);
            Admin login = adminService.login(admin);
            session.setAttribute("admin", login);
            return "redirect:/film/user/list";
        } catch (AuthenticationException e) {
            attributes.addFlashAttribute("result", "用户名或密码错误");
            return "redirect:/adminCommon/loginUI";
        }
    }

}
