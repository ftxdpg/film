package com.film.util;

import com.film.model.Film;
import com.film.model.Types;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/23.
 * 作用：后台异步html代码拼接
 */
public class BehindAjaxResult {
    // table
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
}
