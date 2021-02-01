package com.pipihao.piyu.mapper;

import com.pipihao.piyu.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface UserMapper {

    /**
     * 插入一个未激活的用户
     * active_status为0，为不注册
     * @param user
     * @return
     */
    /*此处语句在xml内*/
    public boolean saveUser(User user);

    /**
     * 判断邮箱是否注册过
     * @param email
     * @return
     */
    @Select("select count(*) from user where email = #{email}")
    public boolean getUserByEmail(String email);

    /**
     * 判断用户名是否注册过
     * @param username
     * @return
     */
    @Select("select count(*) from user where username = #{username}")
    public boolean getUserStatusByUsername(String username);

    /**
     * 通过用户名获取用户
     * @param username
     * @return
     */
    @Select("select * from user where username = #{username}")
    public User getUserByUsername(String username);

    @Update("UPDATE `user` SET `birth_date` = #{birthDate}, `gender` = #{gender}, `address` = #{address}, `introduction` = #{introduction} , `head_image` = #{headImage} , `alipay_account` = #{alipayAccount} WHERE `id` = #{id}")
    public boolean setUserInfo(User user);

    @Select("select `birth_date`,`gender`,`address`,`introduction`,`head_image`,`alipay_account` from user where id = #{id}")
    public User getUserInfo(Integer id);


    /**
     * 根据文章id获取用户名
     * @param pid
     * @return
     */
    @Select("SELECT username,head_image FROM `user` u LEFT JOIN pi_product pp ON pp.user_id=u.id WHERE pp.id=#{pid}")
    public User getUserNameByPid(String pid);

    @Select("SELECT username,head_image FROM `user` where id = #{userId}")
    public User getUserNameById(Integer userId);
}
