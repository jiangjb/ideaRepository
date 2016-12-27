package org.lanqiao.mapper;

import org.lanqiao.entity.AmAdmin;
import org.springframework.stereotype.Repository;

/**
 * 
 * @ClassName LoginAdminMapper
 * @Description TODO(这里用一句话描述这个类的作用)
 * @author wangzhoucheng
 * @Date 2016年12月8日 下午12:34:29
 * @version 1.0.0
 */
@Repository
public interface LoginAdminMapper {
    public AmAdmin findUserByNameAndPassword(String username,String password);
}
