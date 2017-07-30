package com.film.dao;

import com.film.model.Order;
import com.film.model.OrderDetail;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.BaseMapper;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/28.
 * 作用：
 */
@Repository
public interface OrderDetailMapper extends BaseMapper<OrderDetail> {
    // 订单详情
    Order selectOrderAndOrderDetail(Integer orderId);
}
