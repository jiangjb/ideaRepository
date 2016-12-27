package org.lanqiao.mapper;

import java.util.HashMap;
import java.util.List;

import org.lanqiao.entity.AmComment;
import org.lanqiao.entity.AmUser;
import org.lanqiao.vo.CommentVo;
import org.springframework.stereotype.Repository;
/**
 * 电影详情页
 * @author 邓海童
 *
 */
@Repository
public interface MovieDetailMapper {
	//1.电影详情
	public List<HashMap> selectMovieDetails(String id);
	//2.评论数量
	public int selectCommentCount(String  id);
	//3.电影放映时间日期
	public List<HashMap> selectMovieSchedule(String  id);
	//4.电影评论详情
	public List<HashMap> selectMovieComment(String  id);
	//5.电影剧照
	public List<HashMap> selectMovieImage(String  id);
	//6.剧照数量
	public int selectImageCount(String id);
	//7.添加评论
	public void addMovieComment(AmComment comment);
	//8.登录验证
	public AmUser selectUser(String name,String password);
	
	public CommentVo findCommentById(String cid);
	public Double findVoteById(String mid);
}
