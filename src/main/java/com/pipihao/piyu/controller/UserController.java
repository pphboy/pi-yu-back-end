package com.pipihao.piyu.controller;

import com.pipihao.piyu.common.StateResult;
import com.pipihao.piyu.mapper.UserMapper;
import com.pipihao.piyu.pojo.User;
import com.pipihao.piyu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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


    @PostMapping()
    public StateResult setUserInfo(@RequestBody User user){
        return null;
    }

}
