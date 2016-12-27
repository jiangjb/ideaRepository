package org.lanqiao.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.lanqiao.entity.AmUser;
import org.lanqiao.service.BookTicketTwoService;
import org.lanqiao.vo.ConfirmBuyInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @ClassName BookTicketTwoController
 * @Description 订票第二步相关
 * @author wangzhoucheng
 * @Date 2016年12月1日 上午9:01:59
 * @version 1.0.0
 */
@SuppressWarnings("rawtypes")
@Controller
@RequestMapping("/BookTwo")
public class BookTicketTwoController {
    
    @Autowired
    BookTicketTwoService bookTicketTwoService;
    
    /*
     * 根据时刻表id 找到所有的订单 ，再找到所有的被选中的座位 到页面显示的时候把样式该为不可选
     */
    @RequestMapping("findAllSeatByScheduleId")
    public String findAllSeatByScheduleId(String sid,Model model){
        //sid = 1;
        List<String> allSeats = bookTicketTwoService.findAllSeatByScheduleId(sid);
        StringBuilder sb = new StringBuilder();
        for(int i = 0;i<allSeats.size();i++){
            if(i<allSeats.size()-1){
                sb.append(allSeats.get(i)+",");
            }else{
                sb.append(allSeats.get(i));
            }
        }
        String strSeats = sb.toString();
        
        model.addAttribute("strSeats", strSeats);
        model.addAttribute("sid", sid);
        return "/frontpage/book2";
    }
    
    /*
     * 选好座位后  把座位号拿到 和对应的时刻表 ，传入到下一个页面
     */
    @RequestMapping("/pickSeat")
    public String pickSeat(String sid,String[] arraySites,Model model){
        
        //新建三个list集合,分别用来存放便宜、中的、贵的票
        List<String> cheapTicket = new ArrayList<String>();
        cheapTicket.add("10");
        List<String> middleTicket = new ArrayList<String>();
        middleTicket.add("20");
        List<String> expansiveTicket = new ArrayList<String>();
        expansiveTicket.add("30");
        if(arraySites.length != 0){
            //循环遍历选中的座位
            for(int i=0;i<arraySites.length;i++){
                //便宜的票放到一个list中
                if(arraySites[i].contains("A")||arraySites[i].contains("B")||
                        arraySites[i].contains("C")||arraySites[i].contains("D")){
                    cheapTicket.add(arraySites[i]);
                }
                //中等的票放到一个list中
                if(arraySites[i].contains("E")||arraySites[i].contains("F")||
                        arraySites[i].contains("G")||arraySites[i].contains("I")){
                    middleTicket.add(arraySites[i]);
                }
                //贵的票放到一个list中
                if(arraySites[i].contains("J")||arraySites[i].contains("K")||
                        arraySites[i].contains("L")){
                    expansiveTicket.add(arraySites[i]);
                }
            }
        }
        
        //把数据model回页面
        StringBuffer sb = new StringBuffer();
        for(int i = 0; i < arraySites.length; i++){ 
            if(i<arraySites.length-1){
                sb. append(arraySites[i]+",");
            }else{
                sb. append(arraySites[i]);
            }
            
        }
        String str = sb.toString();
        
        model.addAttribute("str", str);
        model.addAttribute("arraySites", arraySites);
        model.addAttribute("scheduleid", sid);
        model.addAttribute("cheapTicket", cheapTicket);
        model.addAttribute("middleTicket", middleTicket);
        model.addAttribute("expansiveTicket", expansiveTicket);
        
        //生成订单号
//        String tickerCode = StringUtils.getCharAndNum(8);
//        model.addAttribute("tickerCode", tickerCode);
        
        return "/frontpage/book3-buy";
    }
    
    /*
     * 确认购买页面
     * 票号：A126BYM4
                    时间：2016-11-25 17:45
                    影院: 万达国际影城
                    影厅: 6号厅
                    票价: ¥ 60.00
                    影片
                    我不是潘金莲
                    座位: 11F, 12F, 13F
     */
   
    @SuppressWarnings("unchecked")
    @RequestMapping("/confimBuy")
    public String confimBuy(String ticketCode,Model model){
        List<ConfirmBuyInfo> confirmBuyInfoList = bookTicketTwoService.findConfirmBuyInfo(ticketCode);
        
        double sumPrice = 0.0;
        StringBuilder sb = new StringBuilder();
        
        //得到总价格和座位号
        if(confirmBuyInfoList!=null ||confirmBuyInfoList.size()>0){
            for(int i=0;i<confirmBuyInfoList.size();i++){
                sumPrice += confirmBuyInfoList.get(i).getCodePrice();
                if(i<confirmBuyInfoList.size()-1){
                    sb.append(confirmBuyInfoList.get(i).getSeatCode()+" ,");
                }else{
                    sb.append(confirmBuyInfoList.get(i).getSeatCode());
                }
            }
        }
        String allSeat = sb.toString();
        ConfirmBuyInfo confirmBuyInfo = confirmBuyInfoList.get(0);
        model.addAttribute("confirmBuyInfo", confirmBuyInfo);
        model.addAttribute("sumPrice", sumPrice);
        model.addAttribute("allSeat", allSeat);
        
        return "/frontpage/book-final";
    }
    
    /*
     * 处理登录
     */
    @RequestMapping("/loginQC")
    public String loginQC(String returnURL,String username,String password,HttpSession session,Model model){
        System.out.println("loginQC");
        
        AmUser user = bookTicketTwoService.findUserByNameAndPass(username, password);
        if(user!=null){
            session.setAttribute("loginUser", user);
            return "redirect:/index/select";
        }else{
            model.addAttribute("errmsg", "用户名或密码错误,请重新输入！");
            return "/frontpage/login";
        }
    }
    
    /*
     * 跳转个人中心
     */
    @RequestMapping("/center")
    public String center(){
        
        return "/frontpage/center";
    }
    
}