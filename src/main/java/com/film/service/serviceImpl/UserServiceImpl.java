package com.film.service.serviceImpl;

import com.film.dao.UserMapper;
import com.film.model.User;
import com.film.service.UserService;
import com.film.util.ExcelUtils;
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
}
