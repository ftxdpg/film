package com.film.controller;

import com.film.model.Car;
import com.film.model.Order;
import com.film.service.CarService;
import com.film.service.OrderService;
import com.film.util.BehindAjaxResult;
import com.film.util.FilmResult;
import com.film.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/28.
 * 作用：
 */
@RequestMapping("/film/user/order")
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private CarService carService;

    // 添加订单，更新购物车记录
    @RequestMapping("/setInOrderAndOrderDetail")
    @ResponseBody
    public FilmResult setInOrderAndOrderDetail(@RequestParam("carIds[]")Integer[] carIds, HttpServletRequest request, HttpSession session){
        try {
            if (carIds == null){
                return new FilmResult(500, "至少选择一个", null);
            }
            // 添加订单以及订单详情
            Integer[] ids = orderService.insetOrderAndOrderDetail(carIds);
            // 删除购物车记录
            carService.deleteArrays(carIds);

            // 更新购物车列表信息
            PageUtil<Car> util = carService.selectCars(1, 5, ids[0]);
            String car = BehindAjaxResult.car(util, request, session);
            String car_page = BehindAjaxResult.car_page(util, ids[0]);
            return new FilmResult(ids[1], car, car_page);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, null, null);
        }
    }

    // 订单列表分页
    @RequestMapping("/orderPage")
    @ResponseBody
    public FilmResult orderPage(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "5")Integer size, Integer uid, HttpServletRequest request){
        try {
            if (uid == null){
                return new FilmResult(500, "不存在用户", null);
            }
            PageUtil<Order> orderPageUtil = orderService.selectOrderPage(page, size, uid);
            String order = BehindAjaxResult.order(orderPageUtil, page, size, request);
            String order_page = BehindAjaxResult.order_page(orderPageUtil, uid);
            return new FilmResult(200, order, order_page);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }

    // 删除订单
    @RequestMapping("/deleteOrder")
    @ResponseBody
    public FilmResult deleteOrder(Integer uid, Integer orderId, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "5")Integer size, HttpServletRequest request){
        try {
            if (uid == null){
                return new FilmResult(500, "不存在的用户", null);
            }
            orderService.deleteByPrimaryKey(orderId);
            PageUtil<Order> orderPageUtil = orderService.selectOrderPage(page, size, uid);
            String order = BehindAjaxResult.order(orderPageUtil, page, size, request);
            String order_page = BehindAjaxResult.order_page(orderPageUtil, uid);
            return new FilmResult(200, order, order_page);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }

    // 购买成功
    @RequestMapping("/buySuccess")
    public String buySuccess(Integer orderId, Model model){
        try {
            orderService.updateByStatus(orderId);
            model.addAttribute("orderId", orderId);
            return "front/user/buySuccess";
        }catch (Exception e){
            e.printStackTrace();
            return "500";
        }
    }
}
