package org.lanqiao.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lanqiao.entity.AmVote;
import org.springframework.stereotype.Repository;
/**
 * 
 * @ClassName MovieListFullMapper 
 * @Description 
 * @author 江家兵
 * @Date 2016年11月30日 上午9:03:24
 * @version 1.0.0
 */
@SuppressWarnings("rawtypes")
@Repository
public interface MovieListFullMapper{
	public List<HashMap> findInfo(Map hashMap);
	public List<HashMap> findMovie();
	public List<HashMap> findMovieById(String id);
	public void insertVote(Map hashmap);
    public int findcomNum(String movie_id);
    public int findphotoNum(String movie_id);
    public List<HashMap> findShowtime(String movie_id);
	public AmVote selectVoteObject(Map hashMap);
	public int findVoteNum(String vote_movie_id);
	public double findVoteScore1(Map map);
	public double findScore(String movie_id);
	
	public List<String> findAllMid();
	
	//Mapper method 'org.lanqiao.mapper.MovieListFullMapper.findVoteScore attempted to return null from a method with a primitive return type (double).
}
