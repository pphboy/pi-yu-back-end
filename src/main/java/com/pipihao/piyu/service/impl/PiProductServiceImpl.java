package com.pipihao.piyu.service.impl;

import com.auth0.jwt.interfaces.DecodedJWT;
import com.pipihao.piyu.common.StateResult;
import com.pipihao.piyu.mapper.PiProductMapper;
import com.pipihao.piyu.pojo.PiProduct;
import com.pipihao.piyu.service.PiProductService;
import com.pipihao.piyu.utils.JWTUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PiProductServiceImpl implements PiProductService {

    @Autowired
    private PiProductMapper piProductMapper;

    @Override
    public StateResult sendPiProduct(PiProduct piProduct,String totken) {
        /*设置用户Id*/
        piProduct.setUserId(Integer.parseInt(JWTUtils.verifyToken(totken).getClaim("userId").asString()));
        if(this.piProductMapper.sendPiProduct(piProduct)){
            return StateResult.getExample(true,"发布成功",null);
        }else{
            return StateResult.getExample(false,"发布失败",null);
        }
    }

    @Override
    public List<PiProduct> findPiProductByUserId(String token) {
        DecodedJWT decodedJWT = JWTUtils.verifyToken(token);
        return this.piProductMapper.findPiProductByUserId(decodedJWT.getClaim("userId").asInt());
    }
}
