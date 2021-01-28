package com.pipihao.piyu.service.impl;

import com.pipihao.piyu.common.StateResult;
import com.pipihao.piyu.mapper.UserMapper;
import com.pipihao.piyu.mapper.WalletMapper;
import com.pipihao.piyu.pojo.User;
import com.pipihao.piyu.service.UserService;
import com.pipihao.piyu.utils.JWTUtils;
import com.pipihao.piyu.utils.MapPojoUtil;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private WalletMapper walletMapper;

    /**
     *  注册
     *  默认值 ： username,password,salt,register_date,email
     * @param user
     * @return
     */
    @Override
    public StateResult registerUser(User user) {
        if(StringUtils.isEmpty(user.getUsername())||StringUtils.isEmpty(user.getPassword()) || StringUtils.isEmpty(user.getEmail()))
            return StateResult.getExample(false,"参数错误",null);
        /*如果userByEmail为true测说明邮箱已存在*/
        if(userMapper.getUserByEmail(user.getEmail()))
            return StateResult.getExample(false,"邮箱已注册",user.getEmail());
        /*为true说明用户名已注册*/
        else if(userMapper.getUserStatusByUsername(user.getUsername()))
            return StateResult.getExample(false,"用户名已注册",user.getUsername());
        else{
            /*生成长度为20的盐*/
            String salt = UUID.randomUUID().toString().replace("-","").substring(0,20);
            /*生成盐、加密密码*/
            user.setSalt(salt);
            /*加密*/
            user.setPassword(DigestUtils.sha1Hex(user.getPassword()+salt));
            /*发送验证邮件 start */
            /* ----- */
            /*发送验证邮件 end  */

            /*注册*/
            userMapper.saveUser(user);
            /*开通钱包*/
            walletMapper.sendNewWalletAboutUser(user.getId());
            /*返回注册用户*/
            return StateResult.getExample(true,"注册成功",user.getUsername());
        }
    }

    /**
     * 设置用户信息
     * @param user
     * @return
     */
    @Override
    public StateResult setUserInfo(User user,String token) {
        // 设置id
        user.setId(Integer.parseInt(JWTUtils.verifyToken(token).getClaim("userId").asString()));
        if(this.userMapper.setUserInfo(user)) return StateResult.getExample(true,"设置用户信息成功",null);
        else return StateResult.getExample(false,"设置用户信息失败",null);
    }

    /**
     * 获取用户信息
     * @param request
     * @return
     */
    @Override
    public StateResult getUserInfo(HttpServletRequest request) {
        User user = this.userMapper.getUserInfo(Integer.parseInt(JWTUtils.verifyToken(request.getHeader("token")).getClaim("userId").asString()));
        if(user != null) return StateResult.getExample(true,"获取用户成功",user);
        else return StateResult.getExample(false,"获取用户失败",null);
    }

}
