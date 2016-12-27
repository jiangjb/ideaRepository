package org.lanqiao.vo;

import java.util.Date;

/**
 * 
 * @ClassName CommentVo
 * @Description TODO(这里用一句话描述这个类的作用)
 * @author wangzhoucheng
 * @Date 2016年12月7日 下午5:33:01
 * @version 1.0.0
 */
public class CommentVo {
    private String username;
    private String commenttime;
    private String content;
    private String imgurl;
    private int commentnum;
    
    public String getUsername() {
        return username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getCommenttime() {
        return commenttime;
    }
    
    public void setCommenttime(String commenttime) {
        this.commenttime = commenttime;
    }
    
    public String getContent() {
        return content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }
    
    public String getImgurl() {
        return imgurl;
    }
    
    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }
    
    public int getCommentnum() {
        return commentnum;
    }
    
    public void setCommentnum(int commentnum) {
        this.commentnum = commentnum;
    }

    @Override
    public String toString() {
        return "CommentVo [username=" + username + ", commenttime=" + commenttime + ", content=" + content
                + ", imgurl=" + imgurl + ", commentnum=" + commentnum + "]";
    }
    
}
