package org.lanqiao.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.lanqiao.service.ScheduleManageAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 
 * @ClassName ScheduleManageAdminController
 * @Description 片场管理
 * @author wangzhoucheng
 * @Date 2016年12月8日 上午9:46:13
 * @version 1.0.0
 */
@Controller
@RequestMapping("/schedule")
public class ScheduleManageAdminController {

    @Autowired
    ScheduleManageAdminService scheduleManageAdminService;
    
    @SuppressWarnings("rawtypes")
    @RequestMapping("/select")
    public String selectAllSchedule(Model model){
        
        List<HashMap> slist = scheduleManageAdminService.findAllSchedule();
        Integer scount = scheduleManageAdminService.findScheduleCount();
        
        model.addAttribute("scount", scount);
        model.addAttribute("slist", slist);
        
        return "/backpage/schedule-list";
    }
    
    @RequestMapping("/addSchedule")
    public String addSchedule(String playtime,String moviename,String cinameName,String hallName,String cityName){
        scheduleManageAdminService.addSchedule(playtime, moviename, cinameName, hallName, cityName);
        return "/backpage/success";
    }
    
    @RequestMapping("/findAllCity")
    @ResponseBody
    public Object findAllCity(){
        List<HashMap> clist = scheduleManageAdminService.findAllCity();
        return clist;
    }
    @RequestMapping("/findAllMovie")
    @ResponseBody
    public Object findAllMovie(){
        List<HashMap> clist = scheduleManageAdminService.findAllMovie();
        return clist;
    }
    @RequestMapping("/findCinemaById")
    @ResponseBody
    public Object findCinemaById(String cid){
        List<HashMap> celist = scheduleManageAdminService.findCinemaById(cid);
        System.out.println("cid:"+cid);
        return celist;
    }
    @RequestMapping("/deleteScheduleById")
    @ResponseBody
    public Object deleteScheduleById(String mid){
        Integer result = scheduleManageAdminService.deleteScheduleById(mid);
        System.out.println();
        return result;
    }
    @RequestMapping("/deleteScheduleByIds")
    @ResponseBody
    public Object deleteScheduleByIds(String strids){
        Integer result = scheduleManageAdminService.deleteScheduleByIds(strids);
        return result;
    }
    
    
    
}
