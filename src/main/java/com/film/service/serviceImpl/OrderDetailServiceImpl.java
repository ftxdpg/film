package com.film.service.serviceImpl;

import com.film.dao.OrderDetailMapper;
import com.film.model.Order;
import com.film.model.OrderDetail;
import com.film.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/28.
 * 作用：
 */
@Repository
public class OrderDetailServiceImpl implements OrderDetailService {

    @Autowired
    private OrderDetailMapper orderDetailMapper;

    // 查询一个订单中的所有商品
    @Override
    public Order selectOrderAndOrderDetail(Integer orderId){
        Order order = orderDetailMapper.selectOrderAndOrderDetail(orderId);
        return order;
    }

    // 插入
    @Override
    public void insert(OrderDetail orderDetail) {
        orderDetailMapper.insert(orderDetail);
    }

    // 删除该订单中的一个商品
    @Override
    public void deleteByPrimaryKey(Integer id) {

    }

    @Override
    public OrderDetail selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public void updateByPrimaryKey(OrderDetail orderDetail) {

    }

    @Override
    public OrderDetail login(OrderDetail orderDetail) {
        return null;
    }

    @Override
    public List<OrderDetail> list() {
        return null;
    }

}
