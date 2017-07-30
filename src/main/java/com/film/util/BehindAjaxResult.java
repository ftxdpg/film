package com.film.util;

import com.film.model.*;
import com.github.pagehelper.Page;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/23.
 * 作用：后台异步html代码拼接
 */
public class BehindAjaxResult {
    // 后台电影分页
    public static String table(PageUtil<Film> films, HttpServletRequest request) {
        if (films.getData() == null || films.getData().size() == 0) {
            return "";
        }
        String table = "";
        // 电影列表相关
        for (Film film : films.getData()) {
            String type = "";
            for (Types t : film.getTypesList()) {
                type += t.getTypeName() + " ";
            }
            table +=
                    "                            <tr id=\"filmTable\">\n" +
                            "                                <td>\n" +
                            "                                     <input id=\"check_" + film.getFilmid() + "\" name=\"checkRow\" onclick=\"choose(" + film.getFilmid() + ")\" style=\"opacity: 1;\" type=\"checkbox\" value=\"" + film.getFilmid() + "\">\n" +
                            "                                </td>\n" +
                            "                                <td align=\"center\">\n" +
                            "                                    <img src=\"" + request.getContextPath() + "/resources/behind/images/" + film.getImg() + "\" width=\"50px\" height=\"75px\" alt=\"图片无法显示\"/>\n" +
                            "                                </td>\n" +
                            "                                <td style=\"border-left-color: rgb(203, 203, 203);\" align=\"center\">" + film.getName() + "</td>\n" +
                            "                                <td align=\"center\">\n" +
                            "                                    " + type +
                            "                                </td>\n" +
                            "                                <td align=\"center\">" + film.getCreatetime() + "</td>\n" +
                            "                                <td align=\"center\">\n" +
                            "                                    <a class=\"smallButton\" href=\"" + request.getContextPath() + "/film/filmInfo?id=" + film.getFilmid() + "\" style=\"margin: 5px;\">\n" +
                            "                                        <img src=\"" + request.getContextPath() + "/resources/behind/images/icons/dark/magnify.png\" alt=\"查看\">\n" +
                            "                                    </a>\n" +
                            "                                    <a class=\"smallButton\" href=\"" + request.getContextPath() + "/film/updateFilmUI?id=" + film.getFilmid() + "\" style=\"margin: 5px;\">\n" +
                            "                                        <img src=\"" + request.getContextPath() + "/resources/behind/images/icons/color/pencil.png\" alt=\"修改\">\n" +
                            "                                    </a>\n" +
                            "                                    <a class=\"smallButton\" onclick=\"deleteOne(" + film.getFilmid() + ")\" title=\"\" style=\"margin: 5px;\">" +
                            "                                        <img src=\"" + request.getContextPath() + "/resources/behind/images/icons/dark/close.png\" alt=\"删除\">\n" +
                            "                                    </a>\n" +
                            "                                </td>\n" +
                            "                            </tr>\n";
        }
        return table;
    }

    public static String page(PageUtil<Film> films) {
        if (films.getData() == null || films.getData().size() == 0) {
            return "";
        }
        // 底部分页信息相关
        String info = "<ul class=\"pages\" id=\"pagesInfo\">\n" +
                "            <li>\n" +
                "                <input class=\"basic\" value=\"第一页\" style=\"margin: 5px;\" onclick=\"page(" + films.getFirstPage() + "," + films.getPageSize() + ")\" type=\"button\">\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                <input class=\"basic\" value=\"<\" style=\"margin: 5px;\" onclick=\"page(" + films.getPrePage() + "," + films.getPageSize() + ")\" type=\"button\">\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                当前第" + films.getCurrentPage() + "页\n" +
                "            </li>\n" +
                "            &nbsp;\n" +
                "            <li>\n" +
                "                总共" + films.getTotalPage() + "页\n" +
                "            </li>\n" +
                "            <li>\n" +
                "            <li>\n" +
                "                <input class=\"basic\" value=\">\" style=\"margin: 5px;\" onclick=\"page(" + films.getNextPage() + "," + films.getPageSize() + ")\" type=\"button\">\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                <input class=\"basic\" value=\"最后一页\" style=\"margin: 5px;\" onclick=\"page(" + films.getTotalPage() + "," + films.getPageSize() + ")\" type=\"button\">\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                每页显示&nbsp;<input type=\"text\" id=\"my_size\" title=\"\" value=" + films.getPageSize() + " onblur=\"selfPage()\" style=\"width: 30px; height: 20px;\"/>&nbsp;条\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                跳转到&nbsp;<input type=\"text\" id=\"my_page\" title=\"\" value=" + films.getCurrentPage() + " onblur=\"selfPage()\" style=\"width: 30px; height: 20px;\"/>&nbsp;页\n" +
                "            </li>\n" +
                "        </ul>";
        return info;
    }

    // 收藏分页列表
    public static String collect(PageUtil<User> userPage, HttpServletRequest request, HttpSession session) {
        if (userPage.getData() == null || userPage.getData().size() == 0) {
            return "";
        }
        User user1 = (User) session.getAttribute("user");
        String collect = "";
        for (User user : userPage.getData()) {
            for (Film film : user.getFilms()) {
                collect +=
                        "                                               <tr>\n" +
                                "                                                    <td align=\"center\"><img src=\"" + request.getContextPath() + "/resources/behind/images/" + film.getImg() + "\" width=\"150\" height=\"150\" /></td>\n" +
                                "                                                    <td align=\"center\">" + film.getName() + "</td>\n" +
                                "                                                    <td align=\"center\">" + film.getPrice() + "</td>\n" +
                                "                                                    <td align=\"center\">" + film.getPoint() + "</td>\n" +
                                "                                                    <td align=\"center\">\n" +
                                "                                                        <a onclick=\"removeCollection(" + film.getFilmid() + ", " + user1.getUid() + ")\">取消收藏</a> &nbsp;\n" +
                                "                                                        <a onclick=\"setInCar(" + film.getFilmid() + ", " + user1.getUid() + ", 1, 5)\">加入购物车</a>\n" +
                                "                                                    </td>\n" +
                                "                                                </tr>";
            }
        }
        return collect;
    }

    public static String collect_page(PageUtil<User> user, Integer uid) {
        if (user.getData() == null || user.getData().size() == 0) {
            return "<div id=\"collect_page\">\n" +
                   "    <i class=\"fa fa-refresh\" onclick=\"collectPage(1, 5, "+ uid +")\"></i>"+
                   "</div>";
        }
        // 收藏底部分页
        String info =
                        "                                <div id=\"collect_page\">\n" +
                        "                                    <input value=\"第一页\" style=\"margin: 5px;\" onclick=\"collectPage(" + user.getFirstPage() + "," + user.getPageSize() + ", " + uid + ")\" type=\"button\">&nbsp;\n" +
                        "                                    <input value=\"<\" style=\"margin: 5px;\" onclick=\"collectPage(" + user.getPrePage() + "," + user.getPageSize() + ", " + uid + ")\" type=\"button\">&nbsp;\n" +
                        "                                    当前第" + user.getCurrentPage() + "页&nbsp;\n" +
                        "                                    总共" + user.getTotalPage() + "页&nbsp;\n" +
                        "                                    <input class=\"basic\" value=\">\" style=\"margin: 5px;\" onclick=\"collectPage(" + user.getNextPage() + "," + user.getPageSize() + ", " + uid + ")\" type=\"button\">&nbsp;\n" +
                        "                                    <input class=\"basic\" value=\"最后一页\" style=\"margin: 5px;\" onclick=\"collectPage(" + user.getTotalPage() + "," + user.getPageSize() + ", " + uid + ")\" type=\"button\">&nbsp;\n" +
                        "                                    每页显示&nbsp;<input type=\"text\" id=\"my_CollectSize\" value=\"" + user.getPageSize() + "\" title=\"\" onblur=\"collectSelfPage(" + uid + ")\" style=\"width: 30px; height: 20px;\"/>&nbsp;条&nbsp;\n" +
                        "                                    跳转到&nbsp;<input type=\"text\" id=\"my_CollectPage\" value=\"" + user.getCurrentPage() + "\" title=\"\" onblur=\"collectSelfPage(" + uid + ")\" style=\"width: 30px; height: 20px;\"/>&nbsp;页\n" +
                        "                                    &nbsp;<i class=\"fa fa-refresh\" onclick=\"collectPage(1, 5, "+ uid +")\"></i>"+
                        "                                </div>";
        return info;
    }

    // 购物车列表信息
    public static String car(PageUtil<Car> carPageUtil, HttpServletRequest request, HttpSession session) {
        if (carPageUtil.getData() == null || carPageUtil.getData().size() == 0) {
            return "";
        }
        String car = "";
        User user = (User) session.getAttribute("user");
        for (Car car1 : carPageUtil.getData()) {
            car += "                                           <tr>\n" +
                    "                                                <td align=\"center\"><input type=\"checkbox\" name=\"selectedRow\"/></td>\n" +
                    "                                                <td align=\"center\"><img src=\"" + request.getContextPath() + "/resources/behind/images/" + car1.getFilm().getImg() + "\" width=\"150\" height=\"150\" /></td>\n" +
                    "                                                <td align=\"center\">" + car1.getFilm().getName() + "</td>\n" +
                    "                                                <td align=\"center\">" + car1.getFilm().getPrice() + "</td>\n" +
                    "                                                <td align=\"center\"><i class=\"fa fa-minus-square\" onclick=\"deleteOne(" + car1.getCarId() + "," + carPageUtil.getCurrentPage() + "," + carPageUtil.getPageSize() + ")\"></i>&nbsp;" + car1.getCount() + "&nbsp;<i class=\"fa fa-plus-square\" onclick=\"setInCar(" + car1.getFilm().getFilmid() + ", " + user.getUid() + ", " + carPageUtil.getCurrentPage() + "," + carPageUtil.getPageSize() + ")\"></i></td>" +
                    "                                                <td align=\"center\">" + car1.getCount() * car1.getFilm().getPrice() + "</td>\n" +
                    "                                                <td align=\"center\">\n" +
                    "                                                    <a onclick=\"removeFromCar(" + car1.getCarId() + "," + user.getUid() + ")\">移出购物车</a> &nbsp;\n" +
                    "                                                </td>\n" +
                    "                                            </tr>";
        }
        return car;
    }

    // 购物车底部分页
    public static String car_page(PageUtil<Car> carPageUtil, Integer uid) {
        if (carPageUtil.getData() == null || carPageUtil.getData().size() == 0) {
            return "<div id=\"car_page\">\n" +
                    "    <i class=\"fa fa-refresh\" onclick=\"carPage(1, 5, "+ uid +")\"></i>"+
                    "</div>";
        }
        String car_page =
                "                               <div id=\"car_page\">\n" +
                        "                                    <input value=\"第一页\" style=\"margin: 5px;\" onclick=\"carPage(" + carPageUtil.getFirstPage() + "," + carPageUtil.getPageSize() + ", " + uid + ")\" type=\"button\">&nbsp;\n" +
                        "                                    <input value=\"<\" style=\"margin: 5px;\" onclick=\"carPage(" + carPageUtil.getPrePage() + "," + carPageUtil.getPageSize() + ", " + uid + ")\" type=\"button\">&nbsp;\n" +
                        "                                    当前第" + carPageUtil.getCurrentPage() + "页&nbsp;\n" +
                        "                                    总共" + carPageUtil.getTotalPage() + "页&nbsp;\n" +
                        "                                    <input class=\"basic\" value=\">\" style=\"margin: 5px;\" onclick=\"carPage(" + carPageUtil.getNextPage() + "," + carPageUtil.getPageSize() + ", " + uid + ")\" type=\"button\">&nbsp;\n" +
                        "                                    <input class=\"basic\" value=\"最后一页\" style=\"margin: 5px;\" onclick=\"carPage(" + carPageUtil.getTotalPage() + "," + carPageUtil.getPageSize() + ", " + uid + ")\" type=\"button\">&nbsp;\n" +
                        "                                    每页显示&nbsp;<input type=\"text\" id=\"my_CarSize\" value=\"" + carPageUtil.getPageSize() + "\" title=\"\" onblur=\"carSelfPage(" + uid + ")\" style=\"width: 30px; height: 20px;\"/>&nbsp;条&nbsp;\n" +
                        "                                    跳转到&nbsp;<input type=\"text\" id=\"my_CarPage\" value=\"" + carPageUtil.getCurrentPage() + "\" title=\"\" onblur=\"carSelfPage(" + uid + ")\" style=\"width: 30px; height: 20px;\"/>&nbsp;页\n" +
                        "                                    &nbsp;<i class=\"fa fa-refresh\" onclick=\"carPage(1, 5, " + uid + ")\"></i>" +
                        "                                    &nbsp;<a class=\"watchlist\" onclick=\"setInOrder()\">购买选中</a>" +
                        "                                </div>";
        return car_page;
    }

    // 订单分页
    public static String order(PageUtil<Order> orderPageUtil, Integer page, Integer size) {
        if (orderPageUtil.getData() == null || orderPageUtil.getData().size() == 0) {
            return "";
        }
        String orders = "";
        for (Order order : orderPageUtil.getData()) {
            String pay = "未付款".equals(order.getStatus()) ? "<a href=\"#\">立即付款</a></c:if>\n" : "";
            orders +=
                            "                                            <tr>\n" +
                            "                                                <td align=\"center\">" + order.getOrderId() + "</td>\n" +
                            "                                                <td align=\"center\">" + order.getCreatedTime() + "</td>\n" +
                            "                                                <td align=\"center\">" + order.getStatus() + "</td>\n" +
                            "                                                <td align=\"center\">" + order.getMoney() + "</td>\n" +
                            "                                                <td align=\"center\">\n" +
                            "                                                    <a onclick=\"removeOrder("+ page +", "+ size + "," + order.getOrderId() + ")\">删除该订单</a> &nbsp;\n" +
                            "                                                    <a href=\"#\">查看详情</a> &nbsp;\n" +
                            pay +
                            "                                                </td>\n" +
                            "                                            </tr>\n";
        }
        return orders;
    }

    // 订单底部分页
    public static String order_page(PageUtil<Order> orderPageUtil, Integer uid) {
        if (orderPageUtil.getData() == null || orderPageUtil.getData().size() == 0) {
            return "<div id=\"order_page\">\n" +
                    "    <i class=\"fa fa-refresh\" onclick=\"orderPage(1, 5, "+ uid +")\"></i>"+
                    "</div>";
        }
        String order_page =
                        "                               <div id=\"order_page\">\n" +
                        "                                    <input value=\"第一页\" style=\"margin: 5px;\" onclick=\"orderPage(" + orderPageUtil.getFirstPage() + "," + orderPageUtil.getPageSize() + ", " + uid + ")\" type=\"button\">&nbsp;\n" +
                        "                                    <input value=\"<\" style=\"margin: 5px;\" onclick=\"orderPage(" + orderPageUtil.getPrePage() + "," + orderPageUtil.getPageSize() + ", " + uid + ")\" type=\"button\">&nbsp;\n" +
                        "                                    当前第" + orderPageUtil.getCurrentPage() + "页&nbsp;\n" +
                        "                                    总共" + orderPageUtil.getTotalPage() + "页&nbsp;\n" +
                        "                                    <input class=\"basic\" value=\">\" style=\"margin: 5px;\" onclick=\"orderPage(" + orderPageUtil.getNextPage() + "," + orderPageUtil.getPageSize() + ", " + uid + ")\" type=\"button\">&nbsp;\n" +
                        "                                    <input class=\"basic\" value=\"最后一页\" style=\"margin: 5px;\" onclick=\"orderPage(" + orderPageUtil.getTotalPage() + "," + orderPageUtil.getPageSize() + ", " + uid + ")\" type=\"button\">&nbsp;\n" +
                        "                                    每页显示&nbsp;<input type=\"text\" id=\"my_orderSize\" value=\"" + orderPageUtil.getPageSize() + "\" title=\"\" onblur=\"orderSelfPage(" + uid + ")\" style=\"width: 30px; height: 20px;\"/>&nbsp;条&nbsp;\n" +
                        "                                    跳转到&nbsp;<input type=\"text\" id=\"my_orderPage\" value=\"" + orderPageUtil.getCurrentPage() + "\" title=\"\" onblur=\"orderSelfPage(" + uid + ")\" style=\"width: 30px; height: 20px;\"/>&nbsp;页\n" +
                        "                                    <i class=\"fa fa-refresh\" onclick=\"orderPage(1, 5, "+ uid +")\"></i>"+
                        "                                </div>";
        return order_page;
    }
}
