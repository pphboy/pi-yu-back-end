package com.pipihao.piyu.controller;

import com.pipihao.piyu.common.StateResult;
import com.pipihao.piyu.pojo.PiProduct;
import com.pipihao.piyu.service.PiProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

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

}
