package org.lanqiao.vo;

import java.util.Date;

/**
 * 
 * @ClassName ConfirmBuyInfo
 * @Description 确认购买之后需要显示的到页面的信息
 * @author wangzhoucheng
 * @Date 2016年12月5日 下午1:03:35
 * @version 1.0.0
 */
public class ConfirmBuyInfo {
    private String ticketCode;
    private double codePrice;
    private String hallName;
    private String cinemaName;
    private Date beginTime;
    private String seatCode;
    private String movieName;
    private String releaseYear;
    private String releaseMonth;
    
    public String getTicketCode() {
        return ticketCode;
    }
    
    public void setTicketCode(String ticketCode) {
        this.ticketCode = ticketCode;
    }
    
    public double getCodePrice() {
        return codePrice;
    }
    
    public void setCodePrice(double codePrice) {
        this.codePrice = codePrice;
    }
    
    public String getHallName() {
        return hallName;
    }
    
    public void setHallName(String hallName) {
        this.hallName = hallName;
    }
    
    public String getCinemaName() {
        return cinemaName;
    }
    
    public void setCinemaName(String cinemaName) {
        this.cinemaName = cinemaName;
    }
    
    public Date getBeginTime() {
        return beginTime;
    }
    
    public void setBeginTime(Date beginTime) {
        this.beginTime = beginTime;
    }
    
    public String getSeatCode() {
        return seatCode;
    }
    
    public void setSeatCode(String seatCode) {
        this.seatCode = seatCode;
    }
    
    public String getMovieName() {
        return movieName;
    }
    
    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }
    
    public String getReleaseYear() {
        return releaseYear;
    }
    
    public void setReleaseYear(String releaseYear) {
        this.releaseYear = releaseYear;
    }
    
    public String getReleaseMonth() {
        return releaseMonth;
    }
    
    public void setReleaseMonth(String releaseMonth) {
        this.releaseMonth = releaseMonth;
    }

    @Override
    public String toString() {
        return "ConfirmBuyInfo [ticketCode=" + ticketCode + ", codePrice=" + codePrice + ", hallName=" + hallName
                + ", cinemaName=" + cinemaName + ", beginTime=" + beginTime + ", seatCode=" + seatCode + ", movieName="
                + movieName + ", releaseYear=" + releaseYear + ", releaseMonth=" + releaseMonth + "]";
    }
    
}
