package org.lanqiao.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lanqiao.entity.AmCinema;
import org.lanqiao.entity.AmHall;
import org.lanqiao.mapper.CinemaAdminMapper;
import org.lanqiao.service.CinemaAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 影院管理后台
 * @author 邓海童
 *
 */
@Service
public class CinemaAdminServiceImpl implements CinemaAdminService {
	@Autowired
	CinemaAdminMapper cinemaAdminMapper;

	public void addCinema(AmCinema cinema) {
		cinemaAdminMapper.addCinema(cinema);

	}

	public Map<String, Object> selectCinema() {
		Map<String,Object> map = new HashMap<String,Object>();
		List<HashMap> cinemaList = cinemaAdminMapper.selectCinema();
		Integer count = cinemaAdminMapper.selectCinemaCount();
		map.put("cinemaList", cinemaList);
		map.put("count", count);
		return map;
	}

	public void deleteCinema(String cid) {
		cinemaAdminMapper.backupCinema(cid);
		cinemaAdminMapper.deleteCinema(cid);
	}

	public List<HashMap> selectBackCinema() {
		List<HashMap> backCinema = cinemaAdminMapper.selectBackCinema();
		return backCinema;
	}
	
	public void updateCinema(AmCinema cinema, String cid) {
		cinema.setId(cid);
		cinemaAdminMapper.updateCinema(cinema);
	}

	public List<HashMap> findCinema(String cinemaname,String cityname) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("cinemaname", cinemaname);
		map.put("cityname", cityname);
		List<HashMap> findCinema = cinemaAdminMapper.findCinema(map);
		return findCinema;
	}

    public void addDefaultHall(AmHall hall) {
        
        cinemaAdminMapper.addDefaultHall(hall);
        
    }



}
