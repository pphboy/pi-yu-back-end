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


    /**
     * 有id的时候，是编辑功能，无id的时候是新建
     * @param piProduct
     * @param request
     * @return
     */
    @PostMapping("/send")
    public StateResult sendPiProduct(@RequestBody PiProduct piProduct, HttpServletRequest request){
        return this.piProductService.sendPiProduct(piProduct,request.getHeader("token"));
    }

    /**
     * 根据id获取皮物，使用map是因为发过来的数据是json数据
     * @param map
     * @param request
     * @return
     */
    @PostMapping("get")
    public StateResult getPiProduct(@RequestBody Map<String,Object> map, HttpServletRequest request){
        return this.piProductService.getPiProductByUserId((String)map.get("id"),request.getHeader("token"));
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


    /**
     * 下架皮物
     * @param map
     * @param request
     * @return
     */
    @PostMapping("down")
    public StateResult downPiProductById(@RequestBody Map<String,Object> map,HttpServletRequest request){
        return this.piProductService.downPiProductById((String)map.get("id"),request.getHeader("token"));
    }
}
