package com.pipihao.piyu.mapper;

import com.pipihao.piyu.pojo.PiProductClass;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface PiProductClassMapper {

    @Select("select * from pi_product_class")
    List<PiProductClass> findAllPiProductClass();

    /* 增删查改 */
}
