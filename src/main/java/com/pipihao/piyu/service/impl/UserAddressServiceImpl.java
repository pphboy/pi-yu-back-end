package com.pipihao.piyu.service.impl;

import com.pipihao.piyu.common.StateResult;
import com.pipihao.piyu.mapper.UserAddressMapper;
import com.pipihao.piyu.pojo.UserAddress;
import com.pipihao.piyu.service.UserAddressService;
import com.pipihao.piyu.utils.JWTUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 增删查改，设置默认
 */
@Service
public class UserAddressServiceImpl implements UserAddressService {


    @Autowired
    private UserAddressMapper userAddressMapper;

    /**
     * 获取当前用户的收货地址
     * @param token
     * @return
     */
    @Override
    public StateResult findUserAddressByUserId(String token) {
        List<UserAddress>  userAddresses= this.userAddressMapper.findUserAddressByUserId(Integer.parseInt(JWTUtils.verifyToken(token).getClaim("userId").asString()));
        return null;
    }

    /**
     * 更新收货地址
     * @param userAddress
     * @param  token
     * @return
     */
    @Override
    public StateResult updateUserAddress(UserAddress userAddress, String token) {
        return null;
    }

    /**
     * 删除用户收货地址
     * @param  userAddress
     * @param  token
     * @return
     */
    @Override
    public StateResult deleteUserAddress(UserAddress userAddress, String token) {
        return null;
    }

    /**
     * 添加用户收货地址
     * @param userAddress
     * @param  token
     * @return
     */
    @Override
    public StateResult insertUserAddress(UserAddress userAddress, String token) {
        return null;
    }

    /**
     * 设置收货地址默认
     * @param userAddress
     * @param token
     * @return
     */
    @Override
    public StateResult setUserAddressDefault(UserAddress userAddress, String token) {
        return null;
    }
}
