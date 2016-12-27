package org.lanqiao.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface BookTicketOneMapper {
	public List<HashMap> findNowSchedule(String cityName,String movieName,String date);
	public List<HashMap> findAllcityNameByMid(String id);
	
	public List<HashMap> findMovieNameAndDefaultCityByMovieId(String mid);
	
	public String findMovieNameByMid(String mid);
}
