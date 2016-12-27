package org.lanqiao.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
/**
 * 
 * @ClassName userManageAdminMapper
 * @Description 
 * @author 家兵
 * @version 1.0.0
 */
@SuppressWarnings("rawtypes")
@Repository
public interface UserManageAdminMapper {
	public List<HashMap> findAllUser();
	public void deleteUser(String userid);
	public void updateUser(Map hashMap);
	public List<HashMap> findUserByName(String username);
	
	public int findUserNumber();
	public int findUserNum1();
	public int findUserNum2();
	public int findUserNum3();
	public int findUserNum4();
	public int findUserNum5();
	public int findUserNum6();
	public int findUserNum7();
	public int findUserNum8();
	public int findUserNum9();
	public int findUserNum10();
}