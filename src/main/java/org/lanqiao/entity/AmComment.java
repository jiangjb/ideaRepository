package org.lanqiao.entity;

import java.util.Date;

/**
 * @ClassName AmComment
 * @Description TODO 评价实体类
 * @author wangzhoucheng
 * @Date 2016年11月29日 下午2:52:15
 * @version 1.0.0
 */
public class AmComment {
    
    private String id;
    private Date time;
    private String content;
    private String userid;
    private String movieid;
    private String cinemaid;
    
    public String getId() {
        return id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    public Date getTime() {
        return time;
    }
    
    public void setTime(Date time) {
        this.time = time;
    }
    
    public String getContent() {
        return content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }
    
    public String getUserid() {
        return userid;
    }
    
    public void setUserid(String userid) {
        this.userid = userid;
    }
    
    public String getMovieid() {
        return movieid;
    }
    
    public void setMovieid(String movieid) {
        this.movieid = movieid;
    }
    
    public String getCinemaid() {
        return cinemaid;
    }
    
    public void setCinemaid(String cinemaid) {
        this.cinemaid = cinemaid;
    }

    @Override
    public String toString() {
        return "AmComment [id=" + id + ", time=" + time + ", content=" + content + ", userid=" + userid + ", movieid="
                + movieid + ", cinemaid=" + cinemaid + "]";
    }
    
}
