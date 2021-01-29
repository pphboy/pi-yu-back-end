package com.pipihao.piyu.controller;

import com.pipihao.piyu.common.PiPage;
import com.pipihao.piyu.common.StateResult;
import com.pipihao.piyu.pojo.PiProduct;
import com.pipihao.piyu.service.PiProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@RestController
@RequestMapping("/product")
public class PiProductController {

    @Autowired
    private PiProductService piProductService;

    @PostMapping("/test")
    public String test(){
        return "test";
    }


    @PostMapping("/send")
    public StateResult sendPiProduct(@RequestBody PiProduct piProduct, HttpServletRequest request){
        return this.piProductService.sendPiProduct(piProduct,request.getHeader("token"));
    }

    @PostMapping("get")
    public StateResult getPiProduct(@RequestBody Map<String,Object> map, HttpServletRequest request){
        return this.piProductService.getPiProductByUserId(Integer.parseInt((String)map.get("id")),request.getHeader("token"));
    }

    /**
     * 获取皮物皮帖
     //1:在售，2:已售，3:下架，4:皮帖
     * @param piPage
     * @param request
     * @return
     */
    @PostMapping
    public StateResult getPiProductByUser(@RequestBody PiPage piPage, HttpServletRequest request){
        return piProductService.findPiProductByUserId(piPage,request.getHeader("token"));
    }
}
