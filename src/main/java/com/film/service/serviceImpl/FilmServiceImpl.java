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
    public PageUtil<Film> selectType(Integer page, Integer size, String[] types){
        Film film = new Film();
        String typeName = null;
        for (String type : types){
            if ("喜剧".equals(type) || "爱情".equals(type) || "动作".equals(type) || "惊悚".equals(type) || "悬疑".equals(type) || "动画".equals(type) || "科幻".equals(type) || "战争".equals(type) || "青春".equals(type)){
                typeName  = type;
            } else if ("华语".equals(type) || "美国".equals(type) || "香港".equals(type) || "韩国".equals(type) || "日本".equals(type) || "印度".equals(type) || "其他".equals(type)){
                film.setContry(type);
            }else {
                film.setCreatetime("%"+type+"%");
            }
        }
        // 新建分页对象
        PageUtil<Film> filmPageUtil = new PageUtil<>(page, size);
        // 查询总数
        int totalCount = typesMapper.selectTypeCounts(film.getContry(), film.getCreatetime(), typeName);
        // 设置总数
        filmPageUtil.setTotalCount(totalCount);
        // 判断当前页
        if (page == null || page <= 0){
            filmPageUtil.setCurrentPage(1);
            page = 1;
        }
        // 判断分页大小
        if (size == null || size <= 0){
            filmPageUtil.setPageSize(5);
            size = 5;
        }
        // 判断跳转到第几页
        if (page > filmPageUtil.getTotalPage() && filmPageUtil.getTotalPage() != 0){
            filmPageUtil.setCurrentPage(filmPageUtil.getTotalPage());
            page = filmPageUtil.getTotalPage();
        }
        film.setPage((page-1)*size);
        film.setSize(size);
        List<Film> films = typesMapper.selectTypes(film.getPage(), film.getSize(), film.getContry(), film.getCreatetime(), typeName);
        filmPageUtil.setData(films);
        return filmPageUtil;
    }

    // 按名字模糊查询
    @Override
    public List<Film> selectByName(String name){
        List<Film> film = filmMapper.selectFilmAndTypesInfo1(new Film("%" + name + "%"));
        if (film == null){
            return null;
        }
        return film;
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
