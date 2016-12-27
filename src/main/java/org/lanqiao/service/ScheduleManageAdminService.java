package org.lanqiao.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * 
 * @ClassName ScheduleManageAdminService
 * @Description TODO(这里用一句话描述这个类的作用)
 * @author wangzhoucheng
 * @Date 2016年12月8日 下午5:32:36
 * @version 1.0.0
 */
public interface ScheduleManageAdminService {
    public List<HashMap> findAllSchedule();
    public List<HashMap> findAllCity();
    public Integer findScheduleCount();
    
    public List<HashMap> findCinemaById(String cid);
    
    public void addSchedule(String playtime,String moviename,String cinameName,String hallName,String cityName);
    
    public List<HashMap> findAllMovie();
    
    public Integer deleteScheduleById(String id);
    
    public Integer deleteScheduleByIds(String strids);
}
