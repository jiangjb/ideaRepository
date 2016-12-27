package org.lanqiao.entity;

/**
 * 
 * @ClassName AmAdmin
 * @Description TODO(这里用一句话描述这个类的作用)
 * @author wangzhoucheng
 * @Date 2016年12月8日 下午1:21:27
 * @version 2.0.0
 */
public class AmAdmin {
    private String adminid;
    private String username;
    private String password;
    
    public String getAdminid() {
        return adminid;
    }
    
    public void setAdminid(String adminid) {
        this.adminid = adminid;
    }
    
    public String getUsername() {
        return username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "AmAdmin [adminid=" + adminid + ", username=" + username + ", password=" + password + "]";
    }
    
}
