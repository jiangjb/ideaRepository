package org.lanqiao.mapper;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;
/**
 * 
 * @ClassName ScheduleManageAdminMapper
 * @Description TODO(这里用一句话描述这个类的作用)
 * @author wangzhoucheng
 * @Date 2016年12月8日 下午5:26:31
 * @version 1.0.0
 */
@Repository
public interface ScheduleManageAdminMapper {
    @SuppressWarnings("rawtypes")
    public List<HashMap> findAllSchedule();
    
    @SuppressWarnings("rawtypes")
    public List<HashMap> findAllCity();
    
    public List<HashMap> findCinemaById(String cid);
    
    public String findMovieIdByName(String mname);
    //insert into am_schedule values("11","2","3","14:30","2016-7-8")
    public void addSchedule(String sid,String mid,String hid,String begintime,String begindate);
    
    public List<HashMap> findAllMovie();
    public Integer deleteScheduleById(String id);
    public Integer deleteScheduleByIds(String [] ids);
    public Integer findScheduleCount();
}
