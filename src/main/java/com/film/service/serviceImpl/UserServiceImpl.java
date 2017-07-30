package com.film.service.serviceImpl;

import com.film.dao.UserFilmMapper;
import com.film.dao.UserMapper;
import com.film.model.User;
import com.film.model.UserFilm;
import com.film.service.UserService;
import com.film.util.ExcelUtils;
import com.film.util.PageUtil;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.ServletOutputStream;
import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/11.
 * 作用：
 */
@Repository
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserFilmMapper userFilmMapper;

    // 插入
    @Override
    public void insert(User user) {
        userMapper.insert(user);
    }

    // 主键删除
    @Override
    public void deleteByPrimaryKey(Integer id) {
        userMapper.deleteByPrimaryKey(id);
    }

    // 主键查询
    @Override
    public User selectByPrimaryKey(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }

    // 主键修改
    @Override
    public void updateByPrimaryKey(User user) {
        userMapper.updateByPrimaryKey(user);
    }

    // 登录
    @Override
    public User login(User user) {
        User user1 = userMapper.selectOne(user);
        return user1;
    }

    // 验证账号的唯一
    @Override
    public int selectByName(String name) {
        return userMapper.selectByName(name);
    }

    // 验证邮箱的唯一
    @Override
    public int selectByEmail(String email) {
        return userMapper.selectByEmail(email);
    }

    // 验证手机的唯一
    @Override
    public int selectByPhone(String phone) {
        return userMapper.selectByPhone(phone);
    }

    // 导出用户列表
    @Override
    public void export(List<User> personList, ServletOutputStream outputStream) {
        ExcelUtils.export(personList, outputStream);
    }

    // 获取用户列表
    @Override
    public List<User> list() {
        List<User> users = userMapper.selectAll();
        return users;
    }

    // 分页插件分页
    @Override
    public List<User> getUserListByTool(Integer page, Integer size) {
        PageHelper.startPage(page, size);
        List<User> users = userMapper.selectAll();
        return users;
    }

    // 查询用户与电影的收藏关系+分页
    @Override
    public PageUtil<User> selectCollection(UserFilm userFilm) {
        PageUtil<User> userPageUtil = new PageUtil<>(null, userFilm.getPage(), userFilm.getSize());
        // 查询总数
        int totalCount = userFilmMapper.selectCount(new UserFilm(null, userFilm.getUserId()));
        // 设置总数
        userPageUtil.setTotalCount(totalCount);
        // 判断当前页
        if (userFilm.getPage() == null || userFilm.getPage() <= 0){
            userPageUtil.setCurrentPage(1);
            userFilm.setPage(1);
        }
        // 判断分页大小
        if (userFilm.getSize() == null || userFilm.getSize() <= 0){
            userPageUtil.setPageSize(5);
            userFilm.setSize(5);
        }
        // 判断跳转到第几页
        if (userFilm.getPage() > userPageUtil.getTotalPage() && userPageUtil.getTotalPage() != 0){
            userPageUtil.setCurrentPage(userPageUtil.getTotalPage());
            userFilm.setPage(userPageUtil.getTotalPage());
        }
        // 分页查询的信息
        userFilm.setPage((userFilm.getPage()-1)*userFilm.getSize());
        List<User> films = userMapper.selectUserFilm(userFilm);
        // 设置信息
        userPageUtil.setData(films);
        return userPageUtil;
    }
}
