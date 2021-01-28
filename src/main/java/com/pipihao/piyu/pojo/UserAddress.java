package com.pipihao.piyu.pojo;


import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * 收货地址类
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@ToString
public class UserAddress implements Serializable {
    private int id; // 自增
    private int userId;
    private String name; // 收货人姓名
    private String phone; // 收货电话
    private String province; // 省级 char
    private String city; // 市级 char
    private String county; // 县级 char
    private String dailedAddress; //详细地址
    private boolean is_default; //是否为默认
    private Date create_time;
}
