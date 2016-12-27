package org.lanqiao.service.impl;

import java.util.HashMap;
import java.util.List;

import org.lanqiao.mapper.IndexMapper;
import org.lanqiao.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
@SuppressWarnings("unchecked")
public class IndexServiceImpl implements IndexService {
	@Autowired
	IndexMapper indexMapper;
	@SuppressWarnings("rawtypes")
    public List<HashMap> selectTodayBest() {
		List<HashMap> listMovies = indexMapper.selectTodayBest();
		return listMovies;
	}
	@SuppressWarnings("rawtypes")
    public List<HashMap> selectTodayBestOther() {
		List<HashMap> listOtherMovies = indexMapper.selectTodayBestOther();
		return listOtherMovies;
	}
	@SuppressWarnings("rawtypes")
    public List<HashMap> selectTodaySales() {
		List<HashMap> todaySales = indexMapper.selectTodaySales();
		return todaySales;
	}
	@SuppressWarnings("rawtypes")
    public List<HashMap> selectClassicMovie() {
		List<HashMap> classicMovie = indexMapper.selectClassicMovie();
		return classicMovie;
	}
	
    @SuppressWarnings("rawtypes")
    public List<HashMap> selectByMovieName(String name) {
		List<HashMap> movieName = indexMapper.selectByMovieName(name);
		for(int i=0;i<movieName.size();i++){
		    String mid = (String) movieName.get(i).get("movie_id");
		    Integer phontNum = indexMapper.selectMoviePhotoNumByMid(mid);
		    movieName.get(i).put("movie_photo_num", phontNum);
		    Integer commentNum = indexMapper.selectMovieCommentNumByMid(mid);
		    movieName.get(i).put("movie_comment_num", commentNum);
		}
		return movieName;
	}
	@SuppressWarnings("rawtypes")
    public List<HashMap> selectByCategory(String name) {
		List<HashMap> selectByCategory = indexMapper.selectByCategory(name);
		for(int i=0;i<selectByCategory.size();i++){
            String mid = (String) selectByCategory.get(i).get("movie_id");
            Integer phontNum = indexMapper.selectMoviePhotoNumByMid(mid);
            selectByCategory.get(i).put("movie_photo_num", phontNum);
            Integer commentNum = indexMapper.selectMovieCommentNumByMid(mid);
            selectByCategory.get(i).put("movie_comment_num", commentNum);
        }
		return selectByCategory;
	}
	@SuppressWarnings("rawtypes")
    public List<HashMap> selectByCountry(String name) {
		List<HashMap> selectByCountry = indexMapper.selectByCountry(name);
		for(int i=0;i<selectByCountry.size();i++){
            String mid = (String) selectByCountry.get(i).get("movie_id");
            Integer phontNum = indexMapper.selectMoviePhotoNumByMid(mid);
            selectByCountry.get(i).put("movie_photo_num", phontNum);
            Integer commentNum = indexMapper.selectMovieCommentNumByMid(mid);
            selectByCountry.get(i).put("movie_comment_num", commentNum);
        }
		return selectByCountry;
	}
	@SuppressWarnings("rawtypes")
    public List<HashMap> selectByDirector(String name) {
		List<HashMap> selectByDirector = indexMapper.selectByDirector(name);
		for(int i=0;i<selectByDirector.size();i++){
            String mid = (String) selectByDirector.get(i).get("movie_id");
            Integer phontNum = indexMapper.selectMoviePhotoNumByMid(mid);
            selectByDirector.get(i).put("movie_photo_num", phontNum);
            Integer commentNum = indexMapper.selectMovieCommentNumByMid(mid);
            selectByDirector.get(i).put("movie_comment_num", commentNum);
        }
		return selectByDirector;
	}
	@SuppressWarnings("rawtypes")
    public List<HashMap> selectByActor(String name) {
		List<HashMap> selectByActor = indexMapper.selectByActor(name);
		for(int i=0;i<selectByActor.size();i++){
            String mid = (String) selectByActor.get(i).get("movie_id");
            Integer phontNum = indexMapper.selectMoviePhotoNumByMid(mid);
            selectByActor.get(i).put("movie_photo_num", phontNum);
            Integer commentNum = indexMapper.selectMovieCommentNumByMid(mid);
            selectByActor.get(i).put("movie_comment_num", commentNum);
        }
		return selectByActor;
	}

}
