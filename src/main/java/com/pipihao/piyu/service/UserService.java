package com.pipihao.piyu.service;

import com.pipihao.piyu.common.StateResult;
import com.pipihao.piyu.pojo.User;

public interface UserService {

    /**
     *  注册
     *  默认值 ： username,password,salt,register_date,email
     * @param user
     * @return
     */
    public StateResult registerUser(User user);

}
