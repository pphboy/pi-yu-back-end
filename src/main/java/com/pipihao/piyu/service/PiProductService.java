package com.pipihao.piyu.service;

import com.github.pagehelper.PageInfo;
import com.pipihao.piyu.common.PiPage;
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
     * @param piPage
     * @param token
     * @return
     */
    public StateResult findPiProductByUserId(PiPage piPage, String token);

    /**
     * 获取一个文章信息
     * @param id
     * @param token
     * @return
     */
    public StateResult getPiProductByUserId(String id, String token);
}
