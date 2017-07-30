package com.film.controller;

import com.film.model.Order;
import com.film.service.OrderDetailService;
import com.film.util.FilmResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/29.
 * 作用：
 */
@Controller
@RequestMapping("/film/user/orderDetail")
public class OrderDetailController {

    @Autowired
    private OrderDetailService orderDetailService;

    // 订单详情页面
    @RequestMapping("/orderDetailUI")
    public String orderDetailUI(Integer orderId, Model model){
        Order order = orderDetailService.selectOrderAndOrderDetail(orderId);
        model.addAttribute("order", order);
        return "front/user/orderDetail";
    }
}
