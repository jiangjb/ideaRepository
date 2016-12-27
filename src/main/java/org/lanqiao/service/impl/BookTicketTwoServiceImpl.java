package org.lanqiao.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.lanqiao.entity.AmDetail;
import org.lanqiao.entity.AmOrder;
import org.lanqiao.entity.AmSeat;
import org.lanqiao.entity.AmUser;
import org.lanqiao.mapper.BookTicketTwoMapper;
import org.lanqiao.service.BookTicketTwoService;
import org.lanqiao.util.TicketUtils;
import org.lanqiao.util.UUIDBuild;
import org.lanqiao.vo.ConfirmBuyInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 
 * @ClassName BookTicketTwoServiceImpl
 * @Description 订票第二步相关的操作
 * @author wangzhoucheng
 * @Date 2016年12月1日 下午1:15:30
 * @version 1.0.0
 */
@Service
public class BookTicketTwoServiceImpl implements BookTicketTwoService {

    @Autowired
    BookTicketTwoMapper bookTicketTwoMapper; 
    
    public List<String> findAllSeatByScheduleId(String id) {
        return bookTicketTwoMapper.findAllSeatByScheduleId(id);
    }

    public List<HashMap<String, String>> findMovieInfoByScheduleId(String id) {
        return bookTicketTwoMapper.findMovieInfoByScheduleId(id);
    }

    //根据座位号和座位码添加座位信息
    public void addSeatAndOrderAndDeteil(String scheduleid,String strCode,String userid,String ordercode) {
        
        //往数据库插入订单
        AmOrder order = new AmOrder();
        String orderid = UUIDBuild.getUUID();
        order.setId(orderid);
        order.setCode(ordercode);
        order.setCreatetime(new Date());
        order.setUserid(userid);
        //order.setReceivetel(orderReceiveTel);
        bookTicketTwoMapper.addOrder(order);
        
        
        //往数据库插入座位号和订单详情
        String hallId = bookTicketTwoMapper.findHallIdByScheduleId(scheduleid);
        String [] arrayCode = null;
        if(strCode != null || !"".equals(strCode)){
            arrayCode = strCode.split(",");
        }
        AmSeat seat = null;
        AmDetail detail = null;
        if(arrayCode != null){
            for(int i=0;i<arrayCode.length;i++){
                seat = new AmSeat();
                String seatid = UUIDBuild.getUUID();
                seat.setId(seatid);
                seat.setHallid(hallId);
                seat.setCode(arrayCode[i]);
                double price = TicketUtils.getPriceByCode(arrayCode[i]);
                seat.setPrice(price);
                seat.setState(1);
                bookTicketTwoMapper.addSeat(seat);
                
                detail = new AmDetail();
                detail.setId(UUIDBuild.getUUID());
                detail.setOrderid(orderid);
                detail.setPrice(price);
                detail.setScheduleid(scheduleid);
                detail.setSeatid(seatid);
                bookTicketTwoMapper.addDetail(detail);
            }
        }
    }

    public AmUser findUserByNameAndPass(String username, String password) {
        return bookTicketTwoMapper.findUserByNameAndPass(username, password);
    }

    public List<ConfirmBuyInfo> findConfirmBuyInfo(String ticketCode) {
        return bookTicketTwoMapper.findConfirmBuyInfo(ticketCode);
    }
}
