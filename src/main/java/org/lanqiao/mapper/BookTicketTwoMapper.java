package org.lanqiao.mapper;

import java.util.HashMap;
import java.util.List;

import org.lanqiao.entity.AmDetail;
import org.lanqiao.entity.AmOrder;
import org.lanqiao.entity.AmSeat;
import org.lanqiao.entity.AmUser;
import org.lanqiao.vo.ConfirmBuyInfo;
import org.springframework.stereotype.Repository;
/**
 * 
 * @ClassName BookTicketTwoMapper
 * @Description TODO订票第二步
 * @author wangzhoucheng
 * @Date 2016年12月1日 下午1:15:42
 * @version 1.0.0
 */
@Repository
public interface BookTicketTwoMapper {

    public List<String> findAllSeatByScheduleId(String id);
    public List<HashMap<String, String>> findMovieInfoByScheduleId(String id);
    
    public void addOrder(AmOrder order);
    
    public void addSeat(AmSeat seat);
    public void addDetail(AmDetail detail);
    
    public String findHallIdByScheduleId(String scheduleId);
    
    public AmUser findUserByNameAndPass(String username,String password);
    
    
    public List<ConfirmBuyInfo> findConfirmBuyInfo(String ticketCode);
    
    
}
