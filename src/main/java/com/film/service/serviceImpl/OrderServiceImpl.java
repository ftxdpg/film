package com.film.service.serviceImpl;

import com.film.dao.CarMapper;
import com.film.dao.FilmMapper;
import com.film.dao.OrderDetailMapper;
import com.film.dao.OrderMapper;
import com.film.model.Car;
import com.film.model.Order;
import com.film.model.OrderDetail;
import com.film.model.UserInfo;
import com.film.service.OrderService;
import com.film.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/28.
 * 作用：
 */
@Repository
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Autowired
    private CarMapper carMapper;

    @Autowired
    private FilmMapper filmMapper;

    // 添加进订单和订单详情
    @Override
    public Integer[] insetOrderAndOrderDetail(Integer[] carIds) throws Exception {
        // 从购物车列表获取用户Id
        Integer userId = carMapper.selectByPrimaryKey(carIds[0]).getUserId();
        // 初始化订单信息
        Order order = new Order(userId);
        String createTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        order.setCreatedTime(createTime);
        order.setStatus("未付款");
        // 查询购物总价
        Double allPrice = 0.0;
        for (Integer id : carIds){
            Car car = carMapper.selectByPrimaryKey(id);
            allPrice += (filmMapper.selectByPrimaryKey(car.getFilmId()).getPrice() * car.getCount());
        }
        order.setMoney(allPrice);
        // 添加进订单
        orderMapper.insert(order);
        // 获取订单的id
        Order one = orderMapper.selectOne(order);
        // 添加进订单详情
        // id数组：orderId、userId
        Integer orderId = one.getOrderId();
        for (Integer id : carIds){
            Car car = carMapper.selectByPrimaryKey(id);
            orderDetailMapper.insert(new OrderDetail(car.getFilmId(), one.getOrderId(), car.getCount()));
        }
        return new Integer[]{userId,orderId};
    }

    // 订单分页
    @Override
    public PageUtil<Order> selectOrderPage(Integer page, Integer size, Integer uid){
        PageUtil<Order> orderPageUtil = new PageUtil<>(null, page, size);
        // 查询总数
        int totalCount = orderMapper.selectCount(new Order(uid));
        // 设置总数
        orderPageUtil.setTotalCount(totalCount);
        // 判断当前页
        if (page == null || page <= 0){
            orderPageUtil.setCurrentPage(1);
            page = 1;
        }
        // 判断分页大小
        if (size == null || size <= 0){
            orderPageUtil.setPageSize(5);
            size = 5;
        }
        // 判断跳转到第几页
        if (page > orderPageUtil.getTotalPage() && orderPageUtil.getTotalPage() != 0){
            orderPageUtil.setCurrentPage(orderPageUtil.getTotalPage());
            page = orderPageUtil.getTotalPage();
        }
        UserInfo userInfo = orderMapper.selectOrderPage((page - 1) * size, size, uid);
        if (userInfo == null){
            orderPageUtil.setData(null);
        }else {
            orderPageUtil.setData(userInfo.getOrders());
        }
        return orderPageUtil;
    }

    // 新增订单
    @Override
    public void insert(Order order) {
        orderMapper.insert(order);
    }

    // 查询一条
    @Override
    public Order selectOne(Order order){
        return orderMapper.selectOne(order);
    }

    // 删除订单以及订单详情
    @Override
    public void deleteByPrimaryKey(Integer id) {
        List<OrderDetail> select = orderDetailMapper.select(new OrderDetail(id));
        for (OrderDetail orderDetail : select){
            orderDetailMapper.delete(orderDetail);
        }
        orderMapper.deleteByPrimaryKey(id);
    }

    // 购买成功
    @Override
    public void updateByStatus(Integer orderId) throws Exception{
        Order order = new Order(orderId, "已购买");
        orderMapper.updateByPrimaryKeySelective(order);
    }

    @Override
    public Order selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public void updateByPrimaryKey(Order order) {

    }

    @Override
    public Order login(Order order) {
        return null;
    }

    @Override
    public List<Order> list() {
        return null;
    }

}
