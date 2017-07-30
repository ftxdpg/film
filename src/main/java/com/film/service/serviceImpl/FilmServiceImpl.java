package com.film.service.serviceImpl;

import com.film.dao.FilmMapper;
import com.film.dao.FilmTypeMapper;
import com.film.dao.TypesMapper;
import com.film.model.Film;
import com.film.model.FilmType;
import com.film.model.Types;
import com.film.service.FilmService;
import com.film.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/13.
 * 作用：
 */
@Repository
public class FilmServiceImpl implements FilmService{

    @Autowired
    private FilmMapper filmMapper;
    @Autowired
    private FilmTypeMapper filmTypeMapper;
    @Autowired
    private TypesMapper typesMapper;

    // 新增电影
    @Override
    public void insert(Film film, String[] types) {
        FilmType filmType = null;
        filmMapper.insert(film);
        // 获取类型
        for (String typ: types) {
            // 如果是直接新增的电影，类型就会是数字
            if (typ.matches("^[1-9]\\d*$")) {
                filmType = new FilmType(film.getFilmid(), Integer.parseInt(typ));
                filmTypeMapper.insert(filmType);
            }
            // 如果是导入的电影，类型就会是中文
            else {
                Types types1 = typesMapper.selectOne(new Types(typ));
                filmType = new FilmType(film.getFilmid(), types1.getTypeid());
                filmTypeMapper.insert(filmType);
            }
        }
    }

    // 检测重复电影名
    @Override
    public int testFilmName(String name) {
        int i = filmMapper.testFileName(name);
        return i;
    }

    // 电影列表--异步分页
    @Override
    public PageUtil<Film> getListByAjax(Integer page, Integer size) {
        Film film = new Film();
        film.setPage((page-1)*size);
        film.setSize(size);

        List<Film> films = filmMapper.selectFilmAndTypesInfo2(film);
        PageUtil<Film> filmPageUtil = new PageUtil<>();
        filmPageUtil.setData(films);
        filmPageUtil.setCurrentPage(page);
        filmPageUtil.setPageSize(size);
        // 总记录
        int totalCount = filmMapper.selectCount(null);
        filmPageUtil.setTotalCount(totalCount);
        return filmPageUtil;
    }

    // 删除电影
    @Override
    public void deleteByPrimaryKey(Integer id) {
        filmMapper.deleteByPrimaryKey(id);
    }

    // 电影详情
    @Override
    public Film selectByPrimaryKey(Integer id) {
        Film film = new Film();
        film.setFilmid(id);
        return filmMapper.selectFilmAndTypesInfo1(film).get(0);
    }

    // 修改电影
    @Override
    public void update(Film film, String[] types) throws Exception{
        FilmType filmType = null;
        // 修改电影
        filmMapper.updateByPrimaryKey(film);

        // 删除类型
        filmTypeMapper.delete(new FilmType(film.getFilmid(), null));

        // 获取类型，修改类型
        for (String typ: types) {
            filmType = new FilmType(film.getFilmid(), Integer.parseInt(typ));
            filmTypeMapper.insert(filmType);
        }
    }

    // 删除选中
    @Override
    public void removeAll(Integer[] ids) throws Exception{
        for (Integer id : ids){
            filmTypeMapper.delete(new FilmType(id,null));
            filmMapper.delete(new Film(id));
        }
    }

    // 删除单个
    @Override
    public void deleteOne(Integer id) throws Exception{
        filmTypeMapper.delete(new FilmType(id,null));
        filmMapper.delete(new Film(id));
    }

    // 5条置顶电影
    @Override
    public List<Film> selectTopFilms(PageUtil pageUtil){
        return filmMapper.selectTopFilms(pageUtil);
    }

    // 电影类型查询
    @Override
    public List<Film> selectType(String createTime, String contry, Integer typeId){
        if (createTime != null){
            createTime = "%"+createTime+"%";
        }
        if (contry != null){
            contry = "%"+contry+"%";
        }
        List<Film> films = filmMapper.selectByTypes(contry, createTime, typeId);
        return films;
    }

    // 按名字查询
    @Override
    public Film selectByName(String name){
        return filmMapper.selectOne(new Film(name));
    }

    @Override
    public void insert(Film film) {

    }

    @Override
    public Film login(Film film) {
        return null;
    }

    @Override
    public List<Film> list() {
        return null;
    }

    @Override
    public void updateByPrimaryKey(Film film) {

    }
}
