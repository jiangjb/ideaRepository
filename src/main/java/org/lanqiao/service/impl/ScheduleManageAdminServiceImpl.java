package org.lanqiao.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.lanqiao.mapper.ScheduleManageAdminMapper;
import org.lanqiao.service.ScheduleManageAdminService;
import org.lanqiao.util.StringUtils;
import org.lanqiao.util.UUIDBuild;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 
 * @ClassName ScheduleManageAdminServiceImpl
 * @Description TODO(这里用一句话描述这个类的作用)
 * @author wangzhoucheng
 * @Date 2016年12月8日 下午5:33:08
 * @version 1.0.0
 */
@Service
public class ScheduleManageAdminServiceImpl implements ScheduleManageAdminService {

    @Autowired
    ScheduleManageAdminMapper scheduleManageAdminMapper;
    
    public List<HashMap> findAllSchedule() {
        // TODO Auto-generated method stub
        return scheduleManageAdminMapper.findAllSchedule();
    }

    public List<HashMap> findAllCity() {
        // TODO Auto-generated method stub
        return scheduleManageAdminMapper.findAllCity();
    }

    public List<HashMap> findCinemaById(String cid) {
        // TODO Auto-generated method stub
        return scheduleManageAdminMapper.findCinemaById(cid);
    }

    public void addSchedule(String playtime, String moviename, String cinameName, String hallName, String cityName) {
        
       // SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //String datetime = sdf.format(playtime);
        //String begindate = datetime.split(" ")[0];
        //String begintime = datetime.split(" ")[1];
        String begindate = playtime.split("T")[0];
        String begintime = playtime.split("T")[1];
        String sid = UUIDBuild.getUUID();
        //String movieId = scheduleManageAdminMapper.findMovieIdByName(moviename);
        scheduleManageAdminMapper.addSchedule(sid, moviename, hallName, begintime, begindate);
        System.out.println();
    }

    public List<HashMap> findAllMovie() {
        // TODO Auto-generated method stub
        return scheduleManageAdminMapper.findAllMovie();
    }

    public Integer deleteScheduleById(String id) {
        return scheduleManageAdminMapper.deleteScheduleById(id);
    }

    public Integer deleteScheduleByIds(String strids) {
        // TODO Auto-generated method stub
        //String [] s2= orderIds.split("&id=");
        String[] ids = strids.split("&id=");
        return scheduleManageAdminMapper.deleteScheduleByIds(ids);
    }

    public Integer findScheduleCount() {
        // TODO Auto-generated method stub
        return scheduleManageAdminMapper.findScheduleCount();
    }

   

}
