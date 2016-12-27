package org.lanqiao.service;

import java.util.Map;

import org.lanqiao.entity.AmComment;
import org.lanqiao.entity.AmUser;
import org.lanqiao.vo.CommentVo;

/**
 * 电影详情页
 * @author 邓海童
 *
 */
public interface MovieDetailService {
	public Map<String,Object> selectmovieDetails(String id);
	public void addMovieComment(AmComment comment);
	public AmUser selectUser(String name,String password);
	
	public CommentVo findCommentById(String cid);
	
	   public int selectCommentCount(String  id);

}
