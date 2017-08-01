package com.film.service.serviceImpl;

import com.film.dao.TypesMapper;
import com.film.model.Types;
import com.film.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 曹金洲.
 * 创建的时间：2017/7/25.
 * 作用：
 */
@Repository
public class TypeServiceImpl implements TypeService {

    @Autowired
    private TypesMapper typesMapper;

    @Override
    public void insert(Types types) {

    }

    @Override
    public void deleteByPrimaryKey(Integer id) {

    }

    @Override
    public Types selectByPrimaryKey(Integer id) {
        return typesMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateByPrimaryKey(Types types) {

    }

    @Override
    public Types login(Types types) {
        return null;
    }

    // 所有类型
    @Override
    public List<Types> list() {
        return typesMapper.selectAll();
    }
}
