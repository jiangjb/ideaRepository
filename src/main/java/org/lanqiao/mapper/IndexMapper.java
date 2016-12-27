package org.lanqiao.mapper;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;
@Repository
@SuppressWarnings("rawtypes")
public interface IndexMapper {
    public List<HashMap> selectTodayBest();
	public List<HashMap> selectTodayBestOther();
	public List<HashMap> selectTodaySales();
	public List<HashMap> selectClassicMovie();
//	条件查询
	public List<HashMap> selectByMovieName(String name);
	public List<HashMap> selectByCategory(String name);
	public List<HashMap> selectByCountry(String name);
	public List<HashMap> selectByDirector(String name);
	public List<HashMap> selectByActor(String name);
	
	public Integer selectMoviePhotoNumByMid(String mid);
	public Integer selectMovieCommentNumByMid(String mid);
}
