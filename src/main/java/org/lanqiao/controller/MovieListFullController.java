package org.lanqiao.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.lanqiao.entity.AmUser;
import org.lanqiao.service.MovieListFullService;
import org.lanqiao.vo.ConditionVo;
import org.lanqiao.vo.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
/**
 * 
 * @ClassName MovieListFullController
 * @Description 
 * @author 江家兵
 * @Date 2016年11月30日 上午9:02:18
 * @version 1.0.0
 */
@Controller
public class MovieListFullController {
	@Autowired
	MovieListFullService movieListFullService;
	/**
	 * 分页
	 * @param pageSize
	 * @param pageIndex
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@SuppressWarnings({"rawtypes", "unchecked" })
    @RequestMapping("movieListFull/show")
	public String show(HttpServletRequest request,HttpSession session,String param,String value) throws UnsupportedEncodingException{
	    
	    ConditionVo con = new ConditionVo();
	    
	    if(param!=null){
	        param = java.net.URLDecoder.decode(param,"UTF-8");
	    }
	    if(value!=null){
            if(value.equals("1")){
                con.setMoviename(param);
            }
            if(value.equals("2")){
                con.setCategory(param);
            }
            if(value.equals("3")){
                con.setActor(param);
            }
            if(value.equals("4")){
                con.setDirector(param);
            }
            if(value.equals("5")){
                con.setCountry(param);
            }
	    }
	    
		Pager<HashMap> pager = movieListFullService.findPage(con,request);
		List<HashMap> list = pager.getList();

//      查询video的数目(字段还没加)
		for(int i=0;i<list.size();i++)
		{
		    String movie_id=(String) list.get(i).get("movie_id");
//查询comment的数量
		    int num =movieListFullService.findComNum(movie_id);
		    list.get(i).put("movie_comment_num", num);
//查询voteNum
		    int voteNum=movieListFullService.findVoteNumber(movie_id);
		    list.get(i).put("movie_voteNum", voteNum);
//查找vote
		    double movie_vote=movieListFullService.findVote(movie_id);
		    list.get(i).put("movie_vote", movie_vote);
//查询photo的数目   
		    int num1=movieListFullService.findPhotoNum(movie_id);
		    list.get(i).put("movie_photo_num", num1);
		}
		System.out.println("list="+list);
		request.setAttribute("list", list);
		request.setAttribute("pager", pager);
		return "frontpage/movie-list-full";
	}
	/**
	 * 电影评分
	 * @param request
	 * @return
	 */
	@RequestMapping("movieListFull/evaluate")
	@ResponseBody
	public String evaluate(@RequestParam("movie_id") String movie_id){
		String list =movieListFullService.findMovieVoteNum(movie_id);
		System.out.println(list);
		return list;
	}
	
	/**
	 * 电影评分更新
	 * @param request
	 * @return
	 */
	@RequestMapping("movieListFull/updatevote")
	@ResponseBody
	public Object updatevote(HttpServletRequest request,HttpSession session,@RequestParam("movie_vote") double movie_vote,@RequestParam("movie_id") String movie_id){
		AmUser amuser=(AmUser) session.getAttribute("loginUser");
		double newvote = -1;
		if(amuser!=null){
			String userid=amuser.getId();
			newvote=movieListFullService.findVote1(movie_id,userid);
			if(newvote==0){//表示没有评论
				newvote=movieListFullService.updateVOTE(movie_vote, movie_id,userid);
			}else{
				//表示用户已评论
				newvote=0;
			}
		}
		return newvote;
	}
	/**
	 * 
	 * @Description 用于ajax更新场次时间
	 * @param request
	 * @param movie_id
	 * @return
	 */
     @RequestMapping("movieListFull/updateShowTime")
	 @ResponseBody
    public Object updateTime(HttpServletRequest request,@RequestParam("movie_id") String movie_id){
	    String list=movieListFullService.updateShow(movie_id);
//	    System.out.println(list);
        return list;
    }
     
    @RequestMapping("/movieListFull/findAllMid")
    @ResponseBody
    public Object findAllMid(){
        List<String> listAllMid = movieListFullService.findAllMid();
        return listAllMid;
    }
	
}
