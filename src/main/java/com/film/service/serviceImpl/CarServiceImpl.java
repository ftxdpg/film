package com.film.service.serviceImpl;

import com.film.dao.CarMapper;
import com.film.model.Car;
import com.film.model.UserInfo;
import com.film.service.CarService;
import com.film.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/27.
 * 作用：
 */
@Repository
public class CarServiceImpl implements CarService {

    @Autowired
    private CarMapper carMapper;

    // 添加进购物车
    @Override
    public void insert(Car car){
        Car one = carMapper.selectOne(car);
        if (one == null){
            car.setCount(1);
            carMapper.insert(car);
        } else {
            one.setCount(one.getCount()+1);
            carMapper.updateByPrimaryKey(one);
        }
    }

    // 减去一件
    @Override
    public void deleteOne(Car car) throws Exception{
        if (car.getCount() > 1){
            car.setCount(car.getCount()-1);
            carMapper.updateByPrimaryKey(car);
        }
    }

    // 批量删除
    @Override
    public void deleteArrays(Integer[] carIds) throws Exception {
        for (Integer id : carIds){
            deleteFromCar(id);
        }
    }

    // 从购物车移除
    @Override
    public void deleteFromCar(Integer carId)throws Exception{
        carMapper.deleteByPrimaryKey(carId);
    }

    // 查询购物车
    @Override
    public PageUtil<Car> selectCars(Integer page, Integer size, Integer userId){
        PageUtil<Car> carPageUtil = new PageUtil<>(null, page, size);
        // 查询总数
        int totalCount = carMapper.selectCount(new Car(userId));
        // 设置总数
        carPageUtil.setTotalCount(totalCount);
        // 判断当前页
        if (page == null || page <= 0){
            carPageUtil.setCurrentPage(1);
            page = 1;
        }
        // 判断分页大小
        if (size == null || size <= 0){
            carPageUtil.setPageSize(5);
            size = 5;
        }
        // 判断跳转到第几页
        if (page > carPageUtil.getTotalPage() && carPageUtil.getTotalPage() != 0){
            carPageUtil.setCurrentPage(carPageUtil.getTotalPage());
            page = carPageUtil.getTotalPage();
        }
        UserInfo userInfo = carMapper.selectCars((page - 1) * size, size, userId);
        if (userInfo == null){
            carPageUtil.setData(null);
        }else {
            carPageUtil.setData(userInfo.getCars());
        }
        return carPageUtil;
    }

    @Override
    public void deleteByPrimaryKey(Integer id) {
        carMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Car selectByPrimaryKey(Integer id) {
        return carMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateByPrimaryKey(Car car) {
        carMapper.updateByPrimaryKey(car);
    }

    @Override
    public Car login(Car car) {
        return null;
    }

    @Override
    public List<Car> list() {
        return null;
    }
}
