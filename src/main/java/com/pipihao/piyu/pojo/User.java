package com.pipihao.piyu.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;


/**
 * 用户 类
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@ToString
public class User {
    private Integer id;
    private String username;
    private Boolean gender;
    private String address;
    private String email;
    private String introduction;
    private String password;
    private String salt;
    @DateTimeFormat(pattern = "yyyy-mm-dd HH:MM:ss")
    private String registerDate;
    @DateTimeFormat(pattern = "yyyy-mm-dd HH:MM:ss")
    private String lastLoginTime;
    @DateTimeFormat(pattern = "yyyy-mm-dd HH:MM:ss")
    private String birthDate;
    private String headImage;
    private Boolean activeStatus;
    private String alipayAccount; // 支付宝账号
}
