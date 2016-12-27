package org.lanqiao.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.lanqiao.entity.AmMovie;
import org.lanqiao.service.IndexService;
import org.lanqiao.service.impl.IndexServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
/**
 * @author ydx
 */
public class IndexController {
	@Autowired
	IndexService indexService;
	/**
	 * 今日最佳/热映电影/票房排行榜排名/经典电影查询
	 * @param model
	 * @return 首页
	 */
	@SuppressWarnings("rawtypes")
    @RequestMapping("/select")
	public String select(Model model){
		List<HashMap> list = indexService.selectTodayBest();
		List<HashMap> otherList = indexService.selectTodayBestOther();
		List<HashMap> salesList = indexService.selectTodaySales();
		List<HashMap> classicMovie = indexService.selectClassicMovie();
		model.addAttribute("list", list);
		model.addAttribute("otherList", otherList);
		model.addAttribute("salesList", salesList);
		model.addAttribute("classicMovie", classicMovie);
		System.out.println(list);
		return "frontpage/index";
	}
	/**
	 * 首页搜索框查询
	 * @param request
	 * @return 电影详情页
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping("/check")
	public String selectBox(HttpServletRequest request,String param,String value) throws UnsupportedEncodingException{
	    param = java.net.URLDecoder.decode(param,"UTF-8");
		if(value.equals("1")){
			System.out.println("name"+param);
			List<HashMap> list = indexService.selectByMovieName(param);
			request.setAttribute("list", list);
			System.out.println("电影："+list);
		}
		if(value.equals("2")){
			List<HashMap> list = indexService.selectByCategory(param);
			request.setAttribute("list", list);
			System.out.println("类型："+list);
		}
		if(value.equals("3")){
			List<HashMap> list = indexService.selectByActor(param);
			request.setAttribute("list", list);
			System.out.println("演员："+list);
		}
		if(value.equals("4")){
			List<HashMap> list = indexService.selectByDirector(param);
			request.setAttribute("list", list);
			System.out.println("导演："+list);
		}
		if(value.equals("5")){
			List<HashMap> list = indexService.selectByCountry(param);
			request.setAttribute("list", list);
			System.out.println("国家："+list);
		}
		return "frontpage/movie-list-full";
	}
}
