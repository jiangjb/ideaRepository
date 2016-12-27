package org.lanqiao.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lanqiao.mapper.BookTicketOneMapper;
import org.lanqiao.service.BookTicketOneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 
 * @ClassName BookTicketOneServiceImpl
 * @Description 
 * @author weirongheng
 * @Date 2016年11月29日 上午9:18:16
 * @version 1.0.0
 */

@Service
@SuppressWarnings("rawtypes")
public class BookTicketOneServiceImpl implements BookTicketOneService{
	@Autowired
	BookTicketOneMapper  bookTicketOneMapper;
	
	public List<HashMap> findNowSchedule(String cityName,String movieName,String date) {
		List<HashMap> list =bookTicketOneMapper.findNowSchedule(cityName,movieName,date);
		return list;
	}
	public List<HashMap> findAllcityNameByMid(String id) {
		List<HashMap> list =bookTicketOneMapper.findAllcityNameByMid(id);
		return list;
	}
    public List<HashMap> findMovieNameAndDefaultCityByMovieId(String mid) {
        
        return bookTicketOneMapper.findMovieNameAndDefaultCityByMovieId(mid);
    }
    public String findMovieNameByMid(String mid) {
        // TODO Auto-generated method stub
        return bookTicketOneMapper.findMovieNameByMid(mid);
    }

}
