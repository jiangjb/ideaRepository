package org.lanqiao.mapper;

import java.util.HashMap;
import java.util.List;

import org.lanqiao.entity.AmMovie;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieManageAdminMapper {
	public List<HashMap> selectAllMovie();
	public HashMap selectMovieByid(String id);
	public void deleteOneMovie(String movieId);
	public void deleteSomeMovie(String[] movieIds);
	public void addMovie(AmMovie amMovie);
	public void updateMovie(AmMovie amMovie);
	
	public Integer findMovieCount();
}
