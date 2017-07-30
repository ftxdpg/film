package com.film.controller;

import com.film.model.Film;
import com.film.model.User;
import com.film.model.UserFilm;
import com.film.service.FilmService;
import com.film.service.UserFilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
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

    // 多条件查询
    @RequestMapping("/multiplyConditions")
    public String multiplyConditions(Integer type, String time, String contry, Model model){
        List<Film> films = filmService.selectType(time, contry, type);
        model.addAttribute("films", films);
        return "front/film/filmType";
    }

    // 名字查询
    @RequestMapping("/selectByFilmName")
    public String selectByName(String name, Model model, HttpSession session){
        Film film = filmService.selectByName(name);
        if (film == null){
            return "front/film/search";
        }
        film = filmService.selectByPrimaryKey(film.getFilmid());
        User user = (User) session.getAttribute("user");
        if (user == null){
            model.addAttribute("userFilm",null);
        }
        else {
            UserFilm userFilm = userFilmService.select(new UserFilm(film.getFilmid(), user.getUid()));
            model.addAttribute("userFilm", userFilm);
        }
        model.addAttribute("film", film);
        return "front/film/search";
    }
}
