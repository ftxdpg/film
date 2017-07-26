package com.film.util;

import com.film.model.Film;
import com.film.model.Types;
import com.film.model.User;
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
    public static String table(PageUtil<Film> films, HttpServletRequest request){
        String table = "";
        // 电影列表相关
        for (Film film : films.getData()) {
            String type = "";
            for (Types t : film.getTypesList()){
                type += t.getTypeName()+" ";
            }
            table +=
                    "                            <tr id=\"filmTable\">\n" +
                            "                                <td>\n" +
                            "                                     <input id=\"check_"+film.getFilmid()+"\" name=\"checkRow\" onclick=\"choose(" + film.getFilmid() + ")\" style=\"opacity: 1;\" type=\"checkbox\" value=\""+film.getFilmid()+"\">\n" +
                            "                                </td>\n" +
                            "                                <td align=\"center\">\n" +
                            "                                    <img src=\""+request.getContextPath()+"/resources/behind/images/"+film.getImg()+"\" width=\"50px\" height=\"75px\" alt=\"图片无法显示\"/>\n" +
                            "                                </td>\n" +
                            "                                <td style=\"border-left-color: rgb(203, 203, 203);\" align=\"center\">"+film.getName()+"</td>\n" +
                            "                                <td align=\"center\">\n" +
                            "                                    "+type+
                            "                                </td>\n" +
                            "                                <td align=\"center\">"+film.getCreatetime()+"</td>\n" +
                            "                                <td align=\"center\">\n" +
                            "                                    <a class=\"smallButton\" href=\""+request.getContextPath()+"/film/filmInfo?id="+film.getFilmid()+"\" style=\"margin: 5px;\">\n" +
                            "                                        <img src=\""+request.getContextPath()+"/resources/behind/images/icons/dark/magnify.png\" alt=\"查看\">\n" +
                            "                                    </a>\n" +
                            "                                    <a class=\"smallButton\" href=\""+request.getContextPath()+"/film/updateFilmUI?id="+film.getFilmid()+"\" style=\"margin: 5px;\">\n" +
                            "                                        <img src=\""+request.getContextPath()+"/resources/behind/images/icons/color/pencil.png\" alt=\"修改\">\n" +
                            "                                    </a>\n" +
                            "                                    <a class=\"smallButton\" onclick=\"deleteOne("+film.getFilmid()+")\" title=\"\" style=\"margin: 5px;\">" +
                            "                                        <img src=\""+request.getContextPath()+"/resources/behind/images/icons/dark/close.png\" alt=\"删除\">\n" +
                            "                                    </a>\n" +
                            "                                </td>\n" +
                            "                            </tr>\n";
        }
        return table;
    }

    public static String page(PageUtil<Film> films){
        // 底部分页信息相关
        String info = "<ul class=\"pages\" id=\"pagesInfo\">\n" +
                "            <li>\n" +
                "                <input class=\"basic\" value=\"第一页\" style=\"margin: 5px;\" onclick=\"page("+films.getFirstPage()+","+films.getPageSize()+")\" type=\"button\">\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                <input class=\"basic\" value=\"<\" style=\"margin: 5px;\" onclick=\"page("+films.getPrePage()+","+films.getPageSize()+")\" type=\"button\">\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                当前第"+films.getCurrentPage()+"页\n" +
                "            </li>\n" +
                "            &nbsp;\n" +
                "            <li>\n" +
                "                总共"+films.getTotalPage()+"页\n" +
                "            </li>\n" +
                "            <li>\n" +
                "            <li>\n" +
                "                <input class=\"basic\" value=\">\" style=\"margin: 5px;\" onclick=\"page("+films.getNextPage()+","+films.getPageSize()+")\" type=\"button\">\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                <input class=\"basic\" value=\"最后一页\" style=\"margin: 5px;\" onclick=\"page("+films.getTotalPage()+","+films.getPageSize()+")\" type=\"button\">\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                每页显示&nbsp;<input type=\"text\" id=\"my_size\" title=\"\" value="+films.getPageSize()+" onblur=\"selfPage()\" style=\"width: 30px; height: 20px;\"/>&nbsp;条\n" +
                "            </li>\n" +
                "            <li>\n" +
                "                跳转到&nbsp;<input type=\"text\" id=\"my_page\" title=\"\" value="+films.getCurrentPage()+" onblur=\"selfPage()\" style=\"width: 30px; height: 20px;\"/>&nbsp;页\n" +
                "            </li>\n" +
                "        </ul>";
        return info;
    }

    // 收藏分页列表
    public static String collect(PageUtil<User> userPage, HttpServletRequest request, HttpSession session){
        User user1 = (User) session.getAttribute("user");
        String collect = "";
        for (User user : userPage.getData()){
            for (Film film : user.getFilms()) {
                collect +=
                        "                                               <tr>\n" +
                                "                                                    <td align=\"center\"><img src=\"" + request.getContextPath() + "/resources/behind/images/" + film.getImg() + "\" width=\"150\" height=\"150\" /></td>\n" +
                                "                                                    <td align=\"center\">"+ film.getName() +"</td>\n" +
                                "                                                    <td align=\"center\">"+ film.getPrice() +"</td>\n" +
                                "                                                    <td align=\"center\">"+ film.getPoint() +"</td>\n" +
                                "                                                    <td align=\"center\">\n" +
                                "                                                        <a onclick=\"removeCollection("+ film.getFilmid() +", "+ user1.getUid() +")\">取消收藏</a> &nbsp;\n" +
                                "                                                        <a>加入购物车</a>\n" +
                                "                                                    </td>\n" +
                                "                                                </tr>";
            }
        }
        return collect;
    }

    public static String collect_page(PageUtil<User> user, Integer uid){
        // 收藏底部分页
        String info =
                        "                                <div id=\"collect_page\">\n" +
                        "                                    <input value=\"第一页\" style=\"margin: 5px;\" onclick=\"collectPage("+ user.getFirstPage() +","+user.getPageSize()+", "+ uid +")\" type=\"button\">&nbsp;\n" +
                        "                                    <input value=\"<\" style=\"margin: 5px;\" onclick=\"collectPage("+ user.getPrePage() +","+ user.getPageSize() +", "+ uid +")\" type=\"button\">&nbsp;\n" +
                        "                                    当前第"+ user.getCurrentPage() +"页&nbsp;\n" +
                        "                                    总共"+ user.getTotalPage() +"页&nbsp;\n" +
                        "                                    <input class=\"basic\" value=\">\" style=\"margin: 5px;\" onclick=\"collectPage("+ user.getNextPage() +","+ user.getPageSize() +", "+ uid +")\" type=\"button\">&nbsp;\n" +
                        "                                    <input class=\"basic\" value=\"最后一页\" style=\"margin: 5px;\" onclick=\"collectPage("+ user.getTotalPage() +","+ user.getPageSize() +", "+ uid +")\" type=\"button\">&nbsp;\n" +
                        "                                    每页显示&nbsp;<input type=\"text\" id=\"my_CollectSize\" value=\""+ user.getPageSize() +"\" title=\"\" onblur=\"collectSelfPage("+ uid +")\" style=\"width: 30px; height: 20px;\"/>&nbsp;条&nbsp;\n" +
                        "                                    跳转到&nbsp;<input type=\"text\" id=\"my_CollectPage\" value=\""+ user.getCurrentPage() +"\" title=\"\" onblur=\"collectSelfPage("+ uid +")\" style=\"width: 30px; height: 20px;\"/>&nbsp;页\n" +
                        "                                </div>";
        return info;
    }
}
