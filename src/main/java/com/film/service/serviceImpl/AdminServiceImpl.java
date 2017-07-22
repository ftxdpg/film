package com.film.service.serviceImpl;

import com.film.dao.AdminMapper;
import com.film.model.Admin;
import com.film.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/13.
 * 作用：管理员Service实现类
 */
@Repository
public class AdminServiceImpl implements AdminService{

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public void insert(Admin admin) {
    }

    @Override
    public void deleteByPrimaryKey(Integer id) {
    }

    @Override
    public Admin selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public void updateByPrimaryKey(Admin admin) {
        adminMapper.updateByPrimaryKey(admin);
    }

    @Override
    public Admin login(Admin admin) {
        return adminMapper.selectOne(admin);
    }

    @Override
    public List<Admin> list() {
        return null;
    }
}
