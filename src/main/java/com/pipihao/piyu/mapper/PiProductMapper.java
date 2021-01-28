package com.pipihao.piyu.mapper;

import com.pipihao.piyu.pojo.PiProduct;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface PiProductMapper {

    /**
     * 发布一个未审核的皮物
     * @param piProduct
     * @return
     */
    @Insert("INSERT INTO `pi_product`(`id`, `user_id`, `title`, `class_id`, `price`, `address`, `content`, `status`, `down_shelf`, `sold_status`, `create_date`, `freight`, `trade_status`) " +
            "VALUES (null,#{userId},#{title}, #{classId}, #{price},#{address},#{content},0,0,0,now(),#{freight}, NULL)")
    boolean sendPiProduct(PiProduct piProduct);

    /**
     * 查询当前用户的皮物
     * @param userId
     * @return
     */
    @Select("select * from `pi_product` where user_id = #{userId}")
    List<PiProduct> findPiProductByUserId(int userId);
}
