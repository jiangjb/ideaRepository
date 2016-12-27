package org.lanqiao.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lanqiao.entity.AmCinema;
import org.lanqiao.entity.AmHall;
import org.springframework.stereotype.Repository;
/**
 * 影院管理后台
 * @author 邓海童
 *
 */
@Repository
public interface CinemaAdminMapper {
	//1.添加影院
	public void addCinema(AmCinema cinema);
	//2.展示影院
	public List<HashMap> selectCinema();
	//影院数量
	public int selectCinemaCount();
	//3.删除影院
	public void deleteCinema(String cid);
	//删除的同时备份影院
	public void backupCinema(String cid);
	//4.展示已删除的影院
	public List<HashMap> selectBackCinema();
	//5.查找影院
	public List<HashMap> findCinema(Map map);
	//6.修改影院信息
	public void updateCinema(AmCinema cinema);
	
	
	public void addDefaultHall(AmHall hall);
	
	
}
