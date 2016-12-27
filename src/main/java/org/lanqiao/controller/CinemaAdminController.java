package org.lanqiao.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lanqiao.entity.AmCinema;
import org.lanqiao.entity.AmHall;
import org.lanqiao.service.CinemaAdminService;
import org.lanqiao.util.UUIDBuild;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 * 影院管理后台
 * @author 邓海童
 *
 */
@Controller
@RequestMapping("/admin")
public class CinemaAdminController {
	@Autowired
	CinemaAdminService cinemaAdminService;
	//添加影院
	@RequestMapping(value="/addcinema",produces="text/html;charset=utf-8")
	@ResponseBody
	public String addCinema(AmCinema cinema){
		String cinemaId = UUIDBuild.getUUID();
		cinema.setId(cinemaId);
		AmHall hall = new AmHall();
		hall.setId(UUIDBuild.getUUID());
		hall.setCinemaid(cinemaId);
		hall.setHallname("1号厅");
		cinemaAdminService.addCinema(cinema);
		cinemaAdminService.addDefaultHall(hall);
		return "添加成功";
	}
	//展示影院
	@RequestMapping("/selectcinema")
	public String selectCinema(Model model){
		
		Map map = cinemaAdminService.selectCinema();
		List<HashMap> cinemaList = (List<HashMap>) map.get("cinemaList");
		Integer count = (Integer) map.get("count");
		model.addAttribute("cinema",cinemaList);
		model.addAttribute("count", count);
		return "backpage/cinema-list";
		
	}
	//删除影院
	@RequestMapping("/deletecinema")
	@ResponseBody
	public String deleteCinema(String cid){
		cinemaAdminService.deleteCinema(cid);
		return "删除成功";
	}
	//展示已删除影院
	@RequestMapping("/selectback")
	public String selectBackCinema(Model model){
		List<HashMap> backCinema = cinemaAdminService.selectBackCinema();
		model.addAttribute("backcinema", backCinema);
		return "backpage/cinema-del";
		
	}
	//查找影院
	@RequestMapping("/findcinema")
	public String findCinema(String cinemaname,String cityname,Model model){
		@SuppressWarnings("rawtypes")
		List<HashMap> findCinema = cinemaAdminService.findCinema(cinemaname, cityname);
		model.addAttribute("findcinema", findCinema);
		return null;
	}
	//修改影院信息
	@RequestMapping("/updatecinema")
	public String updateCinema(AmCinema cinema,String cid){
		cinemaAdminService.updateCinema(cinema, cid);
		return "redirect:selectcinema";
	}
}
