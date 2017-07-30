package com.film.service;

import com.film.model.Order;
import com.film.util.PageUtil;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/28.
 * 作用：
 */
public interface OrderService extends BaseService<Order>{

    // 添加进订单和订单详情
    Integer[] insetOrderAndOrderDetail(Integer[] carIds) throws Exception;

    // 订单分页
    PageUtil<Order> selectOrderPage(Integer page, Integer size, Integer uid);

    // 查询一条
    Order selectOne(Order order);

    // 购买成功
    void updateByStatus(Integer orderId) throws Exception;
}
