package com.pipihao.piyu.mapper;

import com.pipihao.piyu.common.PiPage;
import com.pipihao.piyu.pojo.PiProduct;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface PiProductMapper extends tk.mybatis.mapper.common.Mapper<PiProduct> {

    /**
     * 发布一个未审核的皮物
     * @param piProduct
     * @return
     */
    @Insert("INSERT INTO `pi_product`(`id`, `user_id`, `title`, `class_id`, `price`, `address`, `content`, `status`, `down_shelf`, `sold_status`, `create_date`, `freight`, `trade_status`) " +
            "VALUES (#{id},#{userId},#{title}, #{classId}, #{price},#{address},#{content},1,0,0,now(),#{freight}, NULL)")
    boolean sendPiProduct(PiProduct piProduct);

    /**
     * 查询当前用户的在售的皮物 1
     * @param userId
     * @return
     */
    /*配置映射*/
    @Results(
            id = "PiProduct",
            value = {
                    @Result(property = "classId",column = "class_id"),
                    @Result(property = "piProductClass",column = "class_id",one = @One(select = "com.pipihao.piyu.mapper.PiProductClassMapper.findPiProductClassById"))
            }
    )
    @Select("select * from `pi_product` where user_id = #{userId} and price is not null and down_shelf = 0 and sold_status = 0 order by create_date desc")
    /*皮物必须有价格*/
    List<PiProduct> findOnSalePiProductByUserId(int userId);

    /**
     * 查询已售的皮物 2
     * @param userId
     * @return
     */
    @Select("select * from `pi_product` where user_id = #{userId} and price is not null and down_shelf = 0 and sold_status = 1 order by create_date desc")
    @ResultMap("PiProduct")
    List<PiProduct> findSoldOutPiProductByUserId(int userId);

    /**
     * 查询已下架的皮物 3
     * @param userId
     * @return
     */
    @Select("select * from `pi_product` where user_id = #{userId} and price is not null and down_shelf = 1 and sold_status = 0 order by down_date desc")
    @ResultMap("PiProduct")
    List<PiProduct> findDownShelfPiProductByUserId(int userId);

    /**
     * 查询发布的皮帖 4
     * @param userId
     * @return
     */
    @Select("select * from `pi_product` where user_id = #{userId} and price is null order by create_date desc")
    @ResultMap("PiProduct")
    List<PiProduct> findMessagePiProductByUserId(int userId);

    /**
     * 获取皮物
     * @param id
     * @param userId
     * @return
     */
    @Select("select * from pi_product where id = #{id} and user_id = #{userId}")
    PiProduct findPiProductByUserId(@Param("id") String id,@Param("userId") int userId);

    /**
     * 获取皮物，获取没有被禁止的皮物
     * @param id
     * @return
     */
    @Select("select * from pi_product where id = #{id} and status = 1")
    @Results(
            value = {
                    @Result(property = "id",column = "id"),
                    @Result(property = "maker",column = "id",one = @One(select = "com.pipihao.piyu.mapper.UserMapper.getUserNameByPid")),
                    @Result(property = "piProductClass",column = "class_id",one = @One(select = "com.pipihao.piyu.mapper.PiProductClassMapper.findPiProductClassById"))
            }
    )
    PiProduct findNormalPiProduct(@Param("id") String id);

    /**
     * 编辑皮物
     * @param piProduct
     * @return
     */
    @Update("UPDATE `piyu`.`pi_product` SET  `title` = #{title}, `class_id` = #{classId}, `price` = #{price}, `address` = #{address}, `content` = #{content}, `freight` = #{freight},`update_date` = now() WHERE `id` = #{id} and `user_id` = #{userId}")
    boolean editPiProduct(PiProduct piProduct);

    /**
     * 编辑皮帖
     * @param piProduct
     * @return
     */
    @Update("UPDATE `piyu`.`pi_product` SET  `title` = #{title}, `class_id` = #{classId}, `content` = #{content},`update_date` = now() WHERE `id` = #{id} and `user_id` = #{userId} and price is null")
    boolean editPiProductArticle(PiProduct piProduct);

    /**
     * 下架皮物，只能下架一次
     * @param id
     * @param userId
     * @return
     */
    @Update("UPDATE `piyu`.`pi_product` SET down_shelf =1,down_date = now()  WHERE `id` = #{id} and `user_id` = #{userId} and sold_status = 0 and down_shelf = 0")
    boolean downPiProductById(@Param("id") String id,@Param("userId") Integer userId);

    /**
     * 注意：是皮物<br>
     * 分页获取当前分类下皮物
     * @param piPage
     * @return
     */
    @Select("select * from pi_product where class_id = #{classId} and price is not null and freight is not null and `status` = 1 and down_shelf = 0 and sold_status = 0 order by create_date desc")
    List<PiProduct> findPiProductByClassIdAndPage(PiPage piPage);

    /**
     * 
     * @return
     */
    @Select()
    List<PiProduct> findTheNewPiProductArticle();

}
