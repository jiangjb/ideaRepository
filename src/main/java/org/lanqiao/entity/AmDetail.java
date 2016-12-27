package org.lanqiao.entity;

/**
 * 
 * @ClassName AmDetail
 * @Description TODO 订单详细的实体类
 * @author wangzhoucheng
 * @Date 2016年11月29日 下午2:57:19
 * @version 1.0.0
 */
public class AmDetail {
    private String id;
    private String orderid;
    private String scheduleid;
    private String seatid;
    private double price;
    
    public String getId() {
        return id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    public String getOrderid() {
        return orderid;
    }
    
    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }
    
    public String getScheduleid() {
        return scheduleid;
    }
    
    public void setScheduleid(String scheduleid) {
        this.scheduleid = scheduleid;
    }
    
    public String getSeatid() {
        return seatid;
    }
    
    public void setSeatid(String seatid) {
        this.seatid = seatid;
    }
    
    public double getPrice() {
        return price;
    }
    
    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "AmDetail [id=" + id + ", orderid=" + orderid + ", scheduleid=" + scheduleid + ", seatid=" + seatid
                + ", price=" + price + "]";
    }
    
}
