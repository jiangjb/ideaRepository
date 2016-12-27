package org.lanqiao.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.lanqiao.mapper.UserManageAdminMapper;
import org.lanqiao.service.UserManageAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.google.gson.Gson;
/**
 * 
 * @ClassName UserManageAdminServiceImpl
 * @Description 
 * @author jjb
 * @Date 2016年
 * @version 1.0.0
 */
@SuppressWarnings("rawtypes")
@Service
public class UserManageAdminServiceImpl implements UserManageAdminService {
	@Autowired
	UserManageAdminMapper userManageAdminMapper;
	public List<HashMap> selectAllUser() {
		List<HashMap> list = userManageAdminMapper.findAllUser();
		return list;
	}

	public void deleteUser(String userid) {
			userManageAdminMapper.deleteUser(userid);
	}

	@SuppressWarnings({ "unchecked" })
	public String showNumber() {
		int number=userManageAdminMapper.findUserNumber();
		int num1=userManageAdminMapper.findUserNum1();
		int num2=userManageAdminMapper.findUserNum2();
		int num3=userManageAdminMapper.findUserNum3();
		int num4=userManageAdminMapper.findUserNum4();
		int num5=userManageAdminMapper.findUserNum5();
		int num6=userManageAdminMapper.findUserNum6();
		int num7=userManageAdminMapper.findUserNum7();
		int num8=userManageAdminMapper.findUserNum8();
		int num9=userManageAdminMapper.findUserNum9();
		int num10=userManageAdminMapper.findUserNum10();
		Map map=new HashMap();
		map.put("number", number);
		map.put("num1", num1);
		map.put("num2", num2);
		map.put("num3", num3);
		map.put("num4", num4);
		map.put("num5", num5);
		map.put("num6", num6);
		map.put("num7", num7);
		map.put("num8", num8);
		map.put("num9", num9);
		map.put("num10", num10);
		
		Gson gson=new Gson();
		String list=gson.toJson(map);
		return list;
		
	}

	@SuppressWarnings("unchecked")
	public void updateUserInfo(String user_name, String user_tel,
			String user_email,String user_id) {
		Map map=new HashMap();
		map.put("user_name", user_name);
		map.put("user_tel", user_tel);
		map.put("user_email", user_email);
		map.put("user_id", user_id);
		userManageAdminMapper.updateUser(map);
	}

	public String findUserBN(String username) {
		List<HashMap> list0=userManageAdminMapper.findUserByName(username);
		Gson gson=new Gson();
		String list=gson.toJson(list0);
		System.out.println(list);
		return list;
	}
	
}