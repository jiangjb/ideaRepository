package org.lanqiao.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.lanqiao.entity.AmVote;
import org.lanqiao.mapper.MovieListFullMapper;
import org.lanqiao.service.MovieListFullService;
import org.lanqiao.util.UUIDBuild;
import org.lanqiao.vo.ConditionVo;
import org.lanqiao.vo.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
/**
 * 
 * @ClassName MovieListFullServiceImpl
 * @Description 
 * @author 江家兵
 * @Date 2016年11月30日 上午9:04:50
 * @version 1.0.0
 */
@Service
public class MovieListFullServiceImpl implements MovieListFullService{
	@Autowired
	MovieListFullMapper movieListFullMapper;
	@SuppressWarnings("rawtypes")
    public String findMovieVoteNum(String movie_id) {
		List<HashMap> movie=movieListFullMapper.findMovieById(movie_id);
		Gson gson=new Gson();
		String list=gson.toJson(movie);
		System.out.println("list="+list);
		return list;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public Pager<HashMap> findPage(ConditionVo con,HttpServletRequest request) {
		Pager<HashMap> pager=new Pager<HashMap>();
		String param=request.getParameter("nowPage");
		int nowPage=0;
		//判断是否第一次进来(pageIndex)
		if(null==param||"".equals(param)){
			nowPage=1;//第一次进来
		}else{
			nowPage=Integer.parseInt(param);
		}
		//查询每页的数据 limit 
		int pageSize=5;	
		int arg1=(nowPage-1)*pageSize;
		Map paramap=new HashMap();
		paramap.put("num1",arg1);
		paramap.put("num2",pageSize);
		paramap.put("condition",con);
		List<HashMap> list=movieListFullMapper.findInfo(paramap);
		pager.setList(list);
		
		pager.setPageSize(pageSize);
					
		pager.setNowPage(nowPage);
		int rows = movieListFullMapper.findMovie().size();
		pager.setRows(rows);
		
		//查询页数
		int totalPage=rows%pageSize==0?rows/pageSize:rows/pageSize+1;
		pager.setTotalPage(totalPage);
	return pager;
	}
	
	@SuppressWarnings("rawtypes")
    public List<HashMap> findMovie() {
	    List<HashMap> list=movieListFullMapper.findMovie();
        return list;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public double updateVOTE(double movievote,String movieid,String userid){
		double newvote=0;
		Map map1=new HashMap();
		map1.put("vote_user_id", userid);
		map1.put("vote_movie_id", movieid);
		AmVote amvote=movieListFullMapper.selectVoteObject(map1);
		if(amvote==null){
			String vote_id=UUIDBuild.getUUID();//主键 自动生动
			Map map=new HashMap();
			map.put("vote_score", movievote);
			map.put("vote_movie_id", movieid);
			map.put("vote_user_id", userid);
			map.put("vote_id", vote_id);
			movieListFullMapper.insertVote(map);
			
//			Map map2=new HashMap();
//			map1.put("vote_movie_id", movieid);
//			map1.put("vote_user_id", userid);
			newvote=movievote;
		}
		return newvote;
	}
	/**
	 * 获得评论的数目
	 */
    public int findComNum(String movie_id) {
        int num=movieListFullMapper.findcomNum(movie_id);
        return num;
    }
    /**
     * 获得剧照的数目
     */
    public int findPhotoNum(String movie_id) {
        int num=movieListFullMapper.findphotoNum(movie_id);
        return num;
    }
    
    /**
     * ajax获取场次时间
     */
    @SuppressWarnings({"rawtypes" })
    public String updateShow(String movie_id) {
        List<HashMap> showTime=movieListFullMapper.findShowtime(movie_id);
        Gson gson=new Gson();
        String list=gson.toJson(showTime);
        return list;
    }

	public int findVoteNumber(String vote_movie_id) {
		int movie_Num=movieListFullMapper.findVoteNum(vote_movie_id);
		return movie_Num;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public double findVote1(String movie_id, String userid) {
		Map map=new HashMap();
		map.put("vote_movie_id", movie_id);
		map.put("vote_user_id",userid);
		double vote_score=movieListFullMapper.findVoteScore1(map);
		return vote_score;
	}

	public double findVote(String movie_id) {
		double movie_vote=movieListFullMapper.findScore(movie_id);
		return movie_vote;
	}

    public List<String> findAllMid() {
        // TODO Auto-generated method stub
        return movieListFullMapper.findAllMid();
    }
	
}
