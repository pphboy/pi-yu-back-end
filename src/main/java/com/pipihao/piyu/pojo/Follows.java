package com.pipihao.piyu.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * 粉丝类
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@ToString
public class Follows implements Serializable {
    private int id;
    private int userId; //被关注的用户
    private int fUserId; //粉丝id
    private Date followTime; //关注时间
}
