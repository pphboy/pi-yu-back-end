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
    @Insert("INSERT INTO `piyu`.`user`(`username`,`password`,`salt`,`register_date`, `email`,`active_status`) VALUES (#{username},#{password},#{salt}, now(),#{email},0)")
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


    @Update("")
    public boolean setUserInfo(User user);
}
