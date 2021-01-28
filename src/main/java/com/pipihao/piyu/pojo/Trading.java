package com.pipihao.piyu.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;


/**
 * 交易类
 */
@Data
@NoArgsConstructor
@Accessors(chain = true)
@ToString
public class Trading implements Serializable {
    private int id; //这里使用UUID
    private int userId; //出钱的用户
    private int rUserId;// 收钱的用户
    private int type; //1.交易，2充值，3转账
    private BigDecimal money; //交易金额
    private int piProductId; // 皮物，没有为 null
    private PiProduct piProduct;
    private boolean status; //是否支出 ，如果需要支付的时候，则直接设置成true，然后交易成功，如果订单取消，设置成false
    private Date time;
}
