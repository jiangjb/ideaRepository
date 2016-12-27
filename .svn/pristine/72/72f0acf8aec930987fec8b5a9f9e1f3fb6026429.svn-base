package org.lanqiao.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.lanqiao.vo.ConditionVo;
import org.lanqiao.vo.Pager;
import org.springframework.stereotype.Service;
/**
 * 
 * @ClassName MovieListFullService
 * @Description 
 * @author 江家兵
 * @Date 2016年11月30日 上午9:04:21
 * @version 1.0.0
 */
@Service
public interface MovieListFullService{
	public String findMovieVoteNum(String movie_id);
	@SuppressWarnings("rawtypes")
    public Pager<HashMap> findPage(ConditionVo con,HttpServletRequest request);
	public double updateVOTE(double movie_vote,String movie_id,String userid);
	@SuppressWarnings("rawtypes")
    public List<HashMap> findMovie();
    public int findComNum(String movie_id);
    public int findPhotoNum(String movie_id);
    public String updateShow(String movie_id);
	public int findVoteNumber(String movie_id);
	public double findVote1(String movie_id, String userid);
	public double findVote(String movie_id);
	
	public List<String> findAllMid();
	
	
}
