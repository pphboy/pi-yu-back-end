package com.pipihao.piyu.controller;

import com.pipihao.piyu.service.UserAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("address")
public class UserAddressController {

    @Autowired
    private UserAddressService userAddressService;

    // put 添加,get 获取,post 更新,delete 删除


}
