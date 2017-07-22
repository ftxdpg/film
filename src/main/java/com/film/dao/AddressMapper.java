package com.film.dao;

import com.film.model.Address;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;
@Repository
public interface AddressMapper extends Mapper<Address> {
}