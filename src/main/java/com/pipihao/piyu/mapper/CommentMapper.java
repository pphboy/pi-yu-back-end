package com.pipihao.piyu.mapper;

import com.pipihao.piyu.pojo.Comment;
import org.apache.ibatis.annotations.*;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 评论Mapper
 * @author pipihao
 * @email pphboy@qq.com
 * @date 2021/2/1 14:49
 */
@org.apache.ibatis.annotations.Mapper
public interface CommentMapper extends Mapper<Comment> {

    /**
     * 添加评论，默认为通过，无需要审核
     * @param comment
     * @return
     */
    @Insert("INSERT INTO `piyu`.`comment`(`id`, `content`, `pi_id`, `c_id`, `user_id`, `create_date`,`status`) VALUES (null, #{content}, #{piId}, #{cId}, #{userId}, now(),1)")
    boolean sendComment(Comment comment);

    /**
     * 查询当前皮物的所以评论
     * @param pid
     * @return
     */
    @Results({
        @Result(property = "id",column = "id"),
        @Result(property = "user",column = "user_id",one = @One(select = "com.pipihao.piyu.mapper.UserMapper.getUserNameById")),
        @Result(property = "likeNumber",column = "id",one = @One(select = "getLikeNumber")),
        @Result(property = "rubbishNumber",column = "id",one = @One(select = "getDisLikeNumber"))

    })
    @Select("select * from `comment` where pi_id = #{pi} order by create_date desc")
    List<Comment> findCommentsByPiId(String pid);

    @Select("select count(*) from comment_like where c_id = #{cid} and `like` = 1")
    Integer getLikeNumber(Integer cid);

    @Select("select count(*) from comment_like where c_id = #{cid} and `like` = 0")
    Integer getDisLikeNumber(Integer cid);

    /**
     * 查询此用户 是否在此评论下点赞或踩过
     * @param cid
     * @param userId
     * @return
     */
    @Select("select count(*) from comment_like where c_id = #{cid} and user_id = #{userId}")
    boolean haveLikeInThisCid(@Param("cid") Integer cid,@Param("userId") Integer userId);


    /**
     * 点赞或踩
     * @param map
     * @return
     */
    @Insert("INSERT INTO `comment_like`(`c_id`, `like`, `user_id`, `create_date`) VALUES (#{cid}, #{like},#{userId},now())")
    boolean sendCommentLike(Map<String, Object> map);
}
