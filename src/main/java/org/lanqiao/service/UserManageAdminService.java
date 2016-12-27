package org.lanqiao.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

/**
 * 
 * @author 江家兵
 * @Date 2016-12-6 
 * 
 */
@SuppressWarnings("rawtypes")
@Service
public interface UserManageAdminService {
	public List<HashMap> selectAllUser();
	public void deleteUser(String userid);
	public String showNumber();
	public String findUserBN(String username);
	public void updateUserInfo(String user_name,String user_tel,String user_email,String user_id);
}
