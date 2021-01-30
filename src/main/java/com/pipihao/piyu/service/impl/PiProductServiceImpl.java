package com.pipihao.piyu.service.impl;

import com.auth0.jwt.interfaces.DecodedJWT;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pipihao.piyu.common.PiPage;
import com.pipihao.piyu.common.StateResult;
import com.pipihao.piyu.mapper.PiProductMapper;
import com.pipihao.piyu.pojo.PiProduct;
import com.pipihao.piyu.service.PiProductService;
import com.pipihao.piyu.utils.JWTUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class PiProductServiceImpl implements PiProductService {

    @Autowired
    private PiProductMapper piProductMapper;

    @Override
    public StateResult sendPiProduct(PiProduct piProduct,String totken) {
        piProduct.setUserId(Integer.parseInt(JWTUtils.verifyToken(totken).getClaim("userId").asString()));
        if(!StringUtils.isEmpty(piProduct.getId())){
            /*编辑*/
            boolean status;
            /*有价格就是皮物，没有价格就是皮帖*/
            if(piProduct.getPrice() != null){
                status = this.piProductMapper.editPiProduct(piProduct);
            }else{
                status = this.piProductMapper.editPiProductArticle(piProduct);
            }
            if(status){
                return StateResult.getExample(true,"编辑成功",null);
            }else{
                return StateResult.getExample(false,"编辑失败",null);
            }
        }
        /*设置用户Id*/
        piProduct.setId(UUID.randomUUID().toString().replace("-","").substring(0,16));
        if(this.piProductMapper.sendPiProduct(piProduct)){
            return StateResult.getExample(true,"发布成功",null);
        }else{
            return StateResult.getExample(false,"发布失败",null);
        }
    }

    @Override
    public StateResult findPiProductByUserId(PiPage piPage, String token) {
        PageHelper.startPage(piPage.getPage(),piPage.getSize());
        DecodedJWT decodedJWT = JWTUtils.verifyToken(token);
        List<PiProduct> piProductOfUser;
        switch (piPage.getType()){
            //1:在售，2:已售，3:下架，4:皮帖
            case 1:
                piProductOfUser= this.piProductMapper.findOnSalePiProductByUserId(Integer.parseInt(decodedJWT.getClaim("userId").asString()));
                break;
            case 2:
                piProductOfUser= this.piProductMapper.findSoldOutPiProductByUserId(Integer.parseInt(decodedJWT.getClaim("userId").asString()));
                break;
            case 3:
                piProductOfUser= this.piProductMapper.findDownShelfPiProductByUserId(Integer.parseInt(decodedJWT.getClaim("userId").asString()));
                break;
            case 4:
                piProductOfUser= this.piProductMapper.findMessagePiProductByUserId(Integer.parseInt(decodedJWT.getClaim("userId").asString()));
                break;
            default:
                throw new IllegalStateException("Unexpected value: " + piPage.getType());
        }
        if(piProductOfUser != null ){
            PageInfo piProductPageInfo = new PageInfo(piProductOfUser);
            return StateResult.getExample(true,"获取皮物成功",piProductPageInfo);
        }else{
            return StateResult.getExample(false,"获取皮物失败",null);
        }
    }

    /**
     * 获取皮物，此接口是用到用户内
     * @param id
     * @param token
     * @return
     */
    @Override
    public StateResult getPiProductByUserId(String id, String token) {
        PiProduct  piProduct= this.piProductMapper.findPiProductByUserId(id, Integer.parseInt(JWTUtils.verifyToken(token).getClaim("userId").asString()));
        if(piProduct != null){
            return StateResult.getExample(true,"获取成功",piProduct);
        }else{
            return StateResult.getExample(false,"获取失败，你在做什么操作？请联系管理员",null);
        }
    }

    /**
     * 下架皮物
     * @param id
     * @param token
     * @return
     */
    @Override
    public StateResult downPiProductById(String id, String token) {
        if(this.piProductMapper.downPiProductById(id,Integer.parseInt(JWTUtils.verifyToken(token).getClaim("userId").asString()))){
            return StateResult.getExample(true,"下架皮物成功",null);
        }else{
            return StateResult.getExample(false,"下架皮物失败，请联系管理员",null);
        }
    }
}
