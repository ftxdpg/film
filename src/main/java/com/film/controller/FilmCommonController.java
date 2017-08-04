package com.film.controller;

import com.film.model.*;
import com.film.service.DiscussService;
import com.film.service.FilmService;
import com.film.service.TypeService;
import com.film.service.UserFilmService;
import com.film.util.BehindAjaxResult;
import com.film.util.FilmResult;
import com.film.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/30.
 * 作用：未登录用户搜索电影以及电影分类
 */
@Controller
@RequestMapping("/film/filmCommon/common")
public class FilmCommonController {

    @Autowired
    private FilmService filmService;

    @Autowired
    private UserFilmService userFilmService;

    @Autowired
    private TypeService typeService;

    @Autowired
    private DiscussService discussService;

    // 异步多条件查询
    @RequestMapping("/multiplyConditions")
    @ResponseBody
    public FilmResult multiplyConditions(@RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "5") Integer size, @RequestParam("types[]") String[] types, HttpSession session, HttpServletRequest request){
        try {
            PageUtil<Film> filmPageUtil = filmService.selectType(page, size, types);
            User user = (User) session.getAttribute("user");
            List<UserFilm> userFilms = new ArrayList<>();
            if (user != null) {
                for (Film film : filmPageUtil.getData()) {
                    userFilms.add(userFilmService.select(new UserFilm(film.getFilmid(), user.getUid())));
                }
            }
            String type = BehindAjaxResult.type(filmPageUtil, userFilms, request, user);
            String type_page = BehindAjaxResult.type_page(filmPageUtil);
            return new FilmResult(200, type, type_page);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }

    // 多条件查询页面
    @RequestMapping("/multiplyConditionsUI")
    public String multiplyConditionsUI(Integer type, Model model){
        Types types = typeService.selectByPrimaryKey(type);
        String[] ty = new String[]{types.getTypeName()};
        PageUtil<Film> filmPageUtil = filmService.selectType(1, 5, ty);
        model.addAttribute("filmPage",filmPageUtil);
        return "front/film/filmType";
    }

    // 名字查询
    @RequestMapping("/selectByFilmName")
    public String selectByName(String name, Model model, HttpSession session){
        List<Film> films = filmService.selectByName(name);
        if (films == null || films.size() == 0){
            return "front/film/search";
        }
        // 查询用户是否收藏了电影
        User user = (User) session.getAttribute("user");
        if (user == null){
            model.addAttribute("userFilm",null);
        }
        else {
            List<UserFilm> userFilm = new ArrayList<>();
            for (Film film : films){
                userFilm.add(userFilmService.select(new UserFilm(film.getFilmid(), user.getUid())));
            }
            model.addAttribute("userFilm", userFilm);
        }
        model.addAttribute("film", films);
        return "front/film/search";
    }

    // 评论回复异步分页
    @RequestMapping("/discuss")
    @ResponseBody
    public FilmResult discuss(Integer filmId, @RequestParam(defaultValue = "1")Integer page, @RequestParam(defaultValue = "5")Integer size, HttpServletRequest request, HttpSession session){
        try {
            PageUtil<Discuss> discussPageUtil = discussService.selectDiscuss(filmId, page, size);
            String discuss = BehindAjaxResult.discuss(discussPageUtil, request, (User) session.getAttribute("user"));
            String discussPage = BehindAjaxResult.discuss_page(discussPageUtil);
            return new FilmResult(200, discuss, discussPage);
        }catch (Exception e){
            e.printStackTrace();
            return new FilmResult(500, "内部错误", null);
        }
    }
}
