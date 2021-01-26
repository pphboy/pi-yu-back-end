package com.pipihao.piyu.pojo;


import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 皮物类
 * 皮物即可以当article也可以当product
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@ToString
public class PiProduct {
    private int id;
    private int userId;
    private String title;
    private int classId;
    private PiProductClass piProductClass;
    private String price;
    private String address;
    private String content;
    private boolean status;// 封禁状态 发表时是否需要审核
    private boolean downShelf; // 下架
    private boolean soldStatus;// 已售 下架和已售是冲突的，不能两个同时为true，所以操作之前需要判断状态
    private Date createDate;//创建时间
    private BigDecimal freight; // 运费
    private boolean tradeStatus; //是否是交易中 为true为交易中，为false处于交易中
}
