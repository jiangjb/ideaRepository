package org.lanqiao.entity;

import java.util.Date;

/**
 * 
 * @ClassName AmUser
 * @Description TODO 用户对应的实体类
 * @author wangzhoucheng
 * @Date 2016年11月29日 下午3:30:26
 * @version 1.0.0
 */
public class AmUser {
    private String id ;
    private String name;
    private String password;
    private String email;
    private String tel;
    private int isdelete;
    private Date registtime;
    private String imgurl;
    
    public String getId() {
        return id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getTel() {
        return tel;
    }
    
    public void setTel(String tel) {
        this.tel = tel;
    }
    
    public int getIsdelete() {
        return isdelete;
    }
    
    public void setIsdelete(int isdelete) {
        this.isdelete = isdelete;
    }
    
    public Date getRegisttime() {
        return registtime;
    }
    
    public void setRegisttime(Date registtime) {
        this.registtime = registtime;
    }
    
    public String getImgurl() {
        return imgurl;
    }
    
    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    @Override
    public String toString() {
        return "AmUser [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", tel=" + tel
                + ", isdelete=" + isdelete + ", registtime=" + registtime + ", imgurl=" + imgurl + "]";
    }
    
    
}
