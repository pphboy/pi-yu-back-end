package com.pipihao.piyu.service;

import com.pipihao.piyu.common.StateResult;
import com.pipihao.piyu.pojo.PiProduct;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface PiProductService {

    /**
     * 发布一个未审核的皮物
     * @param piProduct
     * @return
     */
    public StateResult sendPiProduct(PiProduct piProduct,String token);

    /**
     * 查询当前用户的皮物
     * @param token
     * @return
     */
    public List<PiProduct> findPiProductByUserId(String token);
}
