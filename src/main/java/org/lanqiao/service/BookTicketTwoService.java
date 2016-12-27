package org.lanqiao.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.lanqiao.entity.AmSeat;
import org.lanqiao.entity.AmUser;
import org.lanqiao.vo.ConfirmBuyInfo;

/**
 * @ClassName BookTicketTwoService
 * @Description TODO订票第二步相关操作
 * @author wangzhoucheng
 * @Date 2016年12月1日 下午1:16:14
 * @version 1.0.0
 */
public interface BookTicketTwoService {

    public List<String> findAllSeatByScheduleId(String id);
    public List<HashMap<String, String>> findMovieInfoByScheduleId(String id);
    
    public void addSeatAndOrderAndDeteil(String scheduleid,String strCode,String userid,String ordercode);
    
    public AmUser findUserByNameAndPass(String username,String password);
    
    public List<ConfirmBuyInfo> findConfirmBuyInfo(String ticketCode);
}
