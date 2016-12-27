package org.lanqiao.service.impl;

import org.lanqiao.entity.AmAdmin;
import org.lanqiao.mapper.LoginAdminMapper;
import org.lanqiao.service.LoginAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 
 * @ClassName LoginAdminServiceImpl
 * @Description TODO(这里用一句话描述这个类的作用)
 * @author wangzhoucheng
 * @Date 2016年12月8日 下午12:43:35
 * @version 1.0.0
 */
@Service
public class LoginAdminServiceImpl implements LoginAdminService {

    @Autowired
    LoginAdminMapper loginAdminMapper;
    
    public AmAdmin findUserByNameAndPassword(String username, String password) {
        return loginAdminMapper.findUserByNameAndPassword(username, password);
    }

}
