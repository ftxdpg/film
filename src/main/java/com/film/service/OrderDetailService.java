package com.film.service;

import com.film.model.Order;
import com.film.model.OrderDetail;
import com.film.service.BaseService;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/28.
 * 作用：
 */
public interface OrderDetailService extends BaseService<OrderDetail> {
    // 订单详情
    Order selectOrderAndOrderDetail(Integer orderId);
}
