package com.pipihao.piyu.service;

import com.pipihao.piyu.common.PiPage;
import com.pipihao.piyu.common.StateResult;
import com.pipihao.piyu.pojo.PiProduct;

import java.util.List;

public interface PiProductService {

    public StateResult findNewPiProductArticle();

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

    /**
     * 下架皮物
     * @param id
     * @param token
     * @return
     */
    public StateResult downPiProductById(String id, String token);

    /**
     * 获取一个正常的皮物
     * @param id
     * @return
     */
    StateResult getNormalPiProduct(String id);

    /**
     * 分页获取当前分类的下的皮物
     * @param piPage
     * @return
     */
    StateResult findPiProductByClassIdAndPage(PiPage piPage);
}
