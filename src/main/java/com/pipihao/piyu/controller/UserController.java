package com.pipihao.piyu.controller;

import com.alibaba.druid.support.spring.stat.annotation.Stat;
import com.pipihao.piyu.common.StateResult;
import com.pipihao.piyu.mapper.UserMapper;
import com.pipihao.piyu.pojo.User;
import com.pipihao.piyu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;


    @PutMapping("register")
    public StateResult registerUser(@RequestBody User user){
        return userService.registerUser(user);
    }


    /**
     * POST协议设置详情，GET协议获取详情
     * @param user
     * @return
     */
    @PostMapping("info")
    public StateResult setUserInfo(@RequestBody User user, HttpServletRequest request){
        return this.userService.setUserInfo(user,request.getHeader("token"));
    }

    /**
     * 获取用户详情
     * @param request
     * @return
     */
    @GetMapping("info")
    public StateResult getUserInfo(HttpServletRequest request){
        return this.userService.getUserInfo(request);
    }
}
