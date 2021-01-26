package com.pipihao.piyu.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.util.Date;

/**
 * 足迹
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@ToString
public class FootPrint {
    private int id;
    private int userId;
    private int piProductId;
    private Date createTime;
}
