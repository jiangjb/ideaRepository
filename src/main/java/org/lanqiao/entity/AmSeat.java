package org.lanqiao.entity;

/**
 * 
 * @ClassName AmSeat
 * @Description TODO 座位表对应实体类
 * @author wangzhoucheng
 * @Date 2016年11月29日 下午3:27:12
 * @version 1.0.0
 */
public class AmSeat {
    private String id ;
    private String hallid;
    private String code;
    private int state;
    private double price;
    
    public String getId() {
        return id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    public String getHallid() {
        return hallid;
    }
    
    public void setHallid(String hallid) {
        this.hallid = hallid;
    }
    
    public String getCode() {
        return code;
    }
    
    public void setCode(String code) {
        this.code = code;
    }
    
    public int getState() {
        return state;
    }
    
    public void setState(int state) {
        this.state = state;
    }
    
    public double getPrice() {
        return price;
    }
    
    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "AmSeat [id=" + id + ", hallid=" + hallid + ", code=" + code + ", state=" + state + ", price=" + price
                + "]";
    }
    
}
