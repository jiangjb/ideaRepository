package org.lanqiao.entity;

import java.util.Date;

/**
 * 
 * @ClassName AmSchedule
 * @Description TODO 时刻表实体类
 * @author wangzhoucheng
 * @Date 2016年11月29日 下午3:25:37
 * @version 1.0.0
 */
public class AmSchedule {
    private String id ;
    private String movieid;
    private String hallid;
    private Date begintime;
    private Date endtime;
    private Date date;
    
    public String getId() {
        return id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    public String getMovieid() {
        return movieid;
    }
    
    public void setMovieid(String movieid) {
        this.movieid = movieid;
    }
    
    public String getHallid() {
        return hallid;
    }
    
    public void setHallid(String hallid) {
        this.hallid = hallid;
    }
    
    public Date getBegintime() {
        return begintime;
    }
    
    public void setBegintime(Date begintime) {
        this.begintime = begintime;
    }
    
    public Date getEndtime() {
        return endtime;
    }
    
    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }
    
    public Date getDate() {
        return date;
    }
    
    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "AmSchedule [id=" + id + ", movieid=" + movieid + ", hallid=" + hallid + ", begintime=" + begintime
                + ", endtime=" + endtime + ", date=" + date + "]";
    }
    
    
}
