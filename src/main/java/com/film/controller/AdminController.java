package com.film.controller;

import com.film.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/9.
 * 作用：管理员控制器
 */
@Controller
@RequestMapping("/film/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    // 管理员修改信息

    // 管理员忘记密码

    // 管理员信息显示
    @RequestMapping("/info")
    public String info(){
        return "behind/admin/info";
    }

    // 管理员注销
}
