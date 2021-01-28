package com.pipihao.piyu.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
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
    @JsonIgnore
    private Integer id;
    @JsonIgnore
    private String username;
    private Integer gender; // 1，男，2，女，0 空
    private String address;
    @JsonIgnore
    private String email;
    private String introduction;
    @JsonIgnore
    private String password;
    @JsonIgnore
    private String salt;
    @DateTimeFormat(pattern = "yyyy-mm-dd HH:MM:ss")
    private Date registerDate;
    @DateTimeFormat(pattern = "yyyy-mm-dd HH:MM:ss")
    private Date lastLoginTime;
    @DateTimeFormat(pattern = "yyyy-mm-dd HH:MM:ss")
    private Date birthDate;
    private String headImage;
    @JsonIgnore
    private Boolean activeStatus;
    private String alipayAccount; // 支付宝账号
}
