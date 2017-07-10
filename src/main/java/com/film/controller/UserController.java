package com.film.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/9.
 * 作用：用户控制器
 */
@Controller
@RequestMapping("/user")
public class UserController {

    // 登录页面
    @RequestMapping("/loginUI")
    public String loginUI(){
        return "redirect:/front/user/emailReg";
    }

    // 邮箱注册页面
    @RequestMapping(value = "/emailReg", method = RequestMethod.POST)
    public String emailReg(){
        return "redirect:/front/user/emailReg";
    }

    // 短信注册页面
    @RequestMapping(value = "/messageReg", method = RequestMethod.POST)
    public String messageReg(){
        return "redirect:/front/user/messageReg";
    }
}
