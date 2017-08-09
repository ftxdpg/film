package com.film.controller;

import com.film.model.Car;
import com.film.service.CarService;
import com.film.service.UserService;
import com.film.util.BehindAjaxResult;
import com.film.util.FilmResult;
import com.film.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/27.
 * 作用：购物车控制器
 */
@Controller
@RequestMapping("/film/user/car")
public class CarController {
    @Autowired
    private CarService carService;

    // 添加进购物车
    @RequestMapping("/insetCar")
    public String insertCar(Integer filmId, Integer userId){
        carService.insert(new Car(filmId, userId));
        return "redirect:/film/user/userInfo?uid="+userId;
    }

    // 异步添加进购物车
    @RequestMapping("/yiBuInsetCar")
    @ResponseBody
    public FilmResult yiBuInsertCar(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "5")Integer size, Integer filmId, Integer userId, HttpSession session, HttpServletRequest request){
        try {
            carService.insert(new Car(filmId, userId));

            // 获取收藏记录
            PageUtil<Car> carPageUtil = carService.selectCars(page, size, userId);
            String collect = BehindAjaxResult.car(carPageUtil, request, session);

            // 获取收藏分页
            String car_page = BehindAjaxResult.car_page(carPageUtil, userId);
            return new FilmResult(200,collect,car_page);
        } catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }

    // 异步减一
    @RequestMapping("/deleteOne")
    @ResponseBody
    public FilmResult deleteOne(Integer carId, @RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "5")Integer size, HttpSession session, HttpServletRequest request){
        try {
            if (carId == null){
                return new FilmResult(500, "内部错误", null);
            }
            Car car = carService.selectByPrimaryKey(carId);
            carService.deleteOne(car);
            // 获取收藏记录
            PageUtil<Car> carPageUtil = carService.selectCars(page, size, car.getUserId());
            String collect = BehindAjaxResult.car(carPageUtil, request, session);

            // 获取收藏分页
            String car_page = BehindAjaxResult.car_page(carPageUtil, car.getUserId());
            return new FilmResult(200,collect,car_page);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }

    // 移出购物车
    @RequestMapping("/deleteCar")
    @ResponseBody
    public FilmResult deleteCar(Integer userId, Integer carId, HttpSession session, HttpServletRequest request){
        try {
            if (carId == null) {
                return new FilmResult(500, "信息不完整", null);
            }
            carService.deleteFromCar(carId);

            // 获取收藏记录
            PageUtil<Car> carPageUtil = carService.selectCars(1, 5, userId);
            String collect = BehindAjaxResult.car(carPageUtil, request, session);

            // 获取收藏分页
            String page = BehindAjaxResult.car_page(carPageUtil, userId);
            return new FilmResult(200,collect,page);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }

    // 购物车的分页
    @RequestMapping("/carPage")
    @ResponseBody
    public FilmResult carPage(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "5")Integer size, Integer uid, HttpServletRequest request, HttpSession session){
        try {
            if (uid == null) {
                return new FilmResult(500, "内部错误", null);
            }
            PageUtil<Car> util = carService.selectCars(page, size, uid);
            String car = BehindAjaxResult.car(util, request, session);
            String car_page = BehindAjaxResult.car_page(util, uid);
            return new FilmResult(200, car, car_page);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }

    // 选中购买
    @RequestMapping("/buySelected")
    @ResponseBody
    public FilmResult buySelected(Integer[] carIds){
        return null;
    }
}
