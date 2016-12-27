package org.lanqiao.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lanqiao.entity.AmComment;
import org.lanqiao.entity.AmUser;
import org.lanqiao.mapper.MovieDetailMapper;
import org.lanqiao.service.MovieDetailService;
import org.lanqiao.vo.CommentVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 电影详情页
 * @author 邓海童
 *
 */
@Service
public class MovieDetailServiceImpl implements MovieDetailService{
	@Autowired
	MovieDetailMapper movieDetailMapper;
	
	public Map<String,Object> selectmovieDetails(String id){
		Map<String,Object> map = new HashMap<String,Object>();
		//1.电影详情
		List<HashMap> movieDetailsList = movieDetailMapper.selectMovieDetails(id);
		//2.评论数量
		Integer commentCount = movieDetailMapper.selectCommentCount(id);
		//3.放映时刻
		//List<HashMap> movieScheduleList = movieDetailMapper.selectMovieSchedule(id);
		//4.评论详情
		List<HashMap> movieCommentList = movieDetailMapper.selectMovieComment(id);
		//5.电影剧照
		List<HashMap> movieImageList = movieDetailMapper.selectMovieImage(id);
		//6.剧照数量
		Integer imageCount = movieDetailMapper.selectImageCount(id);
		//7.找评分
		Double vote = movieDetailMapper.findVoteById(id);
		map.put("avg_vote", vote);
		
		map.put("movieDetailsList", movieDetailsList);
		
		map.put("commentCount", commentCount);
		
		//map.put("movieScheduleList", movieScheduleList);
		
		map.put("movieCommentList", movieCommentList);
		
		map.put("movieImageList", movieImageList);
		
		map.put("imageCount", imageCount);
		return map;
		
	}

	public void addMovieComment(AmComment comment) {
		movieDetailMapper.addMovieComment(comment);
	}
	public AmUser selectUser(String name,String password){
		AmUser user = movieDetailMapper.selectUser(name, password);
		return user;
	}

    public CommentVo findCommentById(String cid){
        return movieDetailMapper.findCommentById(cid);
    }

    public int selectCommentCount(String id) {
        // TODO Auto-generated method stub
        return movieDetailMapper.selectCommentCount(id);
    }
}
