package com.pipihao.piyu.mapper;

import com.pipihao.piyu.pojo.Wallet;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface WalletMapper {

    @Select("INSERT INTO `piyu`.`wallet`(`user_id`, `balance`, `first_date`, `last_trading_time`, `total_revenue`, `total_expenditure`) VALUES (#{userId}, 0, now(), now(), 0, 0)")
    void sendNewWalletAboutUser(Integer userId);

    @Select("select * from wallet where user_id = #{userId}")
    Wallet findWalletByUserId(Integer userId);
}
