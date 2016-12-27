package org.lanqiao.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.lanqiao.entity.AmMovie;
import org.lanqiao.service.MovieManageAdminService;
import org.lanqiao.util.UUIDBuild;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/movie")
public class MovieManageAdminController {
	@Autowired
	MovieManageAdminService movieManageAdminService;
	/**
	 * 查找所有电影
	 * @param request
	 * @return
	 */
	@RequestMapping("/select")
	public String selectAllMovie(HttpServletRequest request){
		List<HashMap> movieList = movieManageAdminService.selectAllMovie();
		Integer mcount = movieManageAdminService.findMovieCount();
		request.setAttribute("mcount", mcount);
		request.setAttribute("list", movieList);
		return "backpage/movie-list";
	}
	
	/**
	 *删除单个电影
	 * @param orderId
	 * @return
	 */
	@RequestMapping("/deleteOne")
	@ResponseBody
	public Object deleteOneMovie(String movieId){
		movieManageAdminService.deleteOneMovie(movieId);
		return "true";
	}
	/**
	 *	批量删除电影
	 * @param MovieIds
	 * @return
	 */
	@RequestMapping("/deleteSome")
	@ResponseBody
	public Object deleteSomeMovie(String movieIds){
		String [] s2= movieIds.split("&id=");
		movieManageAdminService.deleteSomeMovie(s2);
		return "true";
	}
	/**
	 *	修改电影
	 * @param MovieIds
	 * @return
	 */
	@RequestMapping("/update")
	public String updateMovie(AmMovie amMovie){
		movieManageAdminService.updateMovie(amMovie);
		return "backpage/success";
	}
	@RequestMapping("/upload")
	@ResponseBody
	public Object uploadimg(MultipartFile[] uploadFile,HttpServletRequest request){
		String webPath = request.getServletContext().getRealPath("/");
		File file = new File(webPath+"/uploadimages/movieImg/");
		if(!file.exists()){
			file.mkdir();
		}
		String imgUrl = null;
		for (int i = 0; i < uploadFile.length; i++) {
			String fileName = uploadFile[i].getOriginalFilename();//获取上传文件的原名
			String postfix  = fileName.substring(fileName.lastIndexOf("."));
			fileName = getTimeStamp()+postfix;
			imgUrl ="uploadimages/movieImg/"+ fileName;
			File imgFile = new File(webPath + "/"+imgUrl);
			try {
				uploadFile[i].transferTo(imgFile);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return imgUrl;
	}
	/**
	 *	添加电影
	 * @param MovieIds
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String addMovie(AmMovie amMovie,@RequestParam MultipartFile[] uploadFile,HttpServletRequest request){
		String imgurl = upload(uploadFile, request);
		String uuid = UUIDBuild.getUUID();
		amMovie.setId(uuid);
		amMovie.setImgurl(imgurl);
		movieManageAdminService.addMovie(amMovie);
		return "backpage/success";
	}
//	上传图片
	public String upload(MultipartFile[] uploadFile,HttpServletRequest request){
		String webPath = request.getServletContext().getRealPath("/");
		File file = new File(webPath+"/uploadimages/movieImg/");
		if(!file.exists()){
			file.mkdir();
		}
		String imgUrl = null;
		for (int i = 0; i < uploadFile.length; i++) {
			String fileName = uploadFile[i].getOriginalFilename();//获取上传文件的原名
			String postfix  = fileName.substring(fileName.lastIndexOf("."));
			fileName = getTimeStamp()+postfix;
			imgUrl ="uploadimages/movieImg/"+ fileName;
			File imgFile = new File(webPath + "/"+imgUrl);
			try {
				uploadFile[i].transferTo(imgFile);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return imgUrl;
	}
//	获取时间搓
	public String getTimeStamp(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String date = sdf.format(new Date());
		return date;
	}
	/**
	 * 跳转到电影添加页面
	 * @return
	 */
	@RequestMapping("/addView")
	public String addView(){
		return "backpage/movie-add";
	}
	/**
	 * 跳转到电影修改页面
	 * @return
	 */
	@RequestMapping("/updateView")
	public String updateView(String id,HttpServletRequest request){
		HashMap list = movieManageAdminService.selectMovieByid(id);
		request.setAttribute("list", list);
		return "backpage/movie-edit";
	}
}