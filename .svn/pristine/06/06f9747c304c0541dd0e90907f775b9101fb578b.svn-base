package org.lanqiao.controller;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.lanqiao.entity.AmComment;
import org.lanqiao.entity.AmUser;
import org.lanqiao.service.BookTicketOneService;
import org.lanqiao.service.MovieDetailService;
import org.lanqiao.util.UUIDBuild;
import org.lanqiao.vo.CommentVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 电影详情页
 * @author 邓海童
 *
 */
@Controller
@RequestMapping("/details")
public class MovieDetailController {
    @Autowired
    private BookTicketOneService bookTicketOneService;
    
	@Autowired
	MovieDetailService movieDetailService;
	@SuppressWarnings({"unchecked", "rawtypes" })
    @RequestMapping("/moviedetails")
	public String movieDetails(String id,Model model,String date){
		Map map = movieDetailService.selectmovieDetails(id);
		List<HashMap> movieDetailsList = (List<HashMap>) map.get("movieDetailsList");
		Integer commentCount = (Integer) map.get("commentCount");
		//List<HashMap> movieScheduleList = (List<HashMap>) map.get("movieScheduleList");
		List<HashMap> movieCommentList = (List<HashMap>) map.get("movieCommentList");
		List<HashMap> movieImageList = (List<HashMap>) map.get("movieImageList");
		Integer imageCount = (Integer) map.get("imageCount");
		Double avg_vote =  (Double) map.get("avg_vote");
		
		model.addAttribute("detailsList", movieDetailsList);
		model.addAttribute("commentCount", commentCount);
		
		//List<HashMap> listCity =  bookTicketOneService.findAllcityNameByMid(id);
		//model.addAttribute("listCity", listCity);
		//model.addAttribute("scheduleList", movieScheduleList);
		model.addAttribute("commentList", movieCommentList);
		model.addAttribute("imageList", movieImageList);
		model.addAttribute("imageCount", imageCount);
		model.addAttribute("avg_vote", avg_vote);
		model.addAttribute("id", id);
		//System.out.println(movieCommentList);
		
		
//处理选择时间的，新加代码
//		List<HashMap> listM = bookTicketOneService.findMovieNameAndDefaultCityByMovieId(id);
//        String movieName = null;
//        String cityName = null;
//        int size = listM.size();
//        if(listM.size()!=0 && listM!=null){
//            Map mapWrh = listM.get(0);
//            movieName=(String) mapWrh.get("movie_name");
//            cityName=(String) mapWrh.get("city_name");
//        }
//先暂定一个默认的日期        
//        date="2016-11-29";
//        if(movieName!=null && cityName!=null){
//            List<HashMap> list= bookTicketOneService.findNowSchedule(cityName,movieName,date);
//                //截取时间的格式，只显示时分，不显示秒
//                for(int i=0;i<list.size();i++){
//                SimpleDateFormat format=new SimpleDateFormat("HH:mm");
//                String dateq = format.format(list.get(i).get("schedule_begintime"));
//                //System.out.println("dateq==="+dateq);
//                //把截取的时间再放回map集合中
//                ((HashMap)list.get(i)).put("schedule_begintime",dateq);
//                }
//            model.addAttribute("list", list);
//         }else{
//             List listempty = new ArrayList();
//             model.addAttribute("list", listempty);
//         }
//        String mName = bookTicketOneService.findMovieNameByMid(id);
//        model.addAttribute("mName", mName);
        //model.addAttribute("mid", mid);
		return "frontpage/movie-page-full";
		
	}
	/**
	 * 添加评论验证
	 * @throws UnsupportedEncodingException 
	 */
	@RequestMapping(value="/addcomment",method=RequestMethod.POST)
	@ResponseBody
	public Object addMovieComment(String movieid,String userid,String content) throws UnsupportedEncodingException{
	    AmComment comment = new AmComment();
		String commentId = UUIDBuild.getUUID();
		if(content!=null){
		    content = java.net.URLDecoder.decode(content,"UTF-8");
        }
		comment.setId(commentId);
		comment.setContent(content);
		comment.setTime(new Date());
		comment.setUserid(userid);
		comment.setMovieid(movieid);
		movieDetailService.addMovieComment(comment);
		int cnum = movieDetailService.selectCommentCount(movieid);
		CommentVo commentVo = movieDetailService.findCommentById(commentId);
		commentVo.setCommentnum(cnum);
		return commentVo;
	}
	/**
	 * 登录框验证
	 */
	@RequestMapping(value="/login",produces="text/html;charset=utf-8")
	@ResponseBody
	public String  login(String username,String password,String autologin,Model model,
			HttpSession session,HttpServletResponse response){
		AmUser user = movieDetailService.selectUser(username, password);
		String msg = null;
		if(user==null){
			msg = "登录失败";
		}else {
			session.setAttribute("loginUser", user);
			 if(autologin=="true"){  
                 int savetime=7*24*60*60;  
                 Cookie cookie = new Cookie("user", username+"=="+password);  
                 cookie.setMaxAge(savetime);                     
                 response.addCookie(cookie);  
             }  
			msg = "登录成功";
			
		}
		return msg;
		
	}
	@RequestMapping("/exit")
	public String exit(String returnURL,String pid,HttpSession session,HttpServletRequest request){
		session.removeAttribute("loginUser");
		if(!("-1".equals(pid))){
		    returnURL = returnURL+"?id="+pid;
		}
		return "redirect:"+returnURL;
		
	}
}
