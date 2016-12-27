package org.lanqiao.service.impl;

import java.util.HashMap;
import java.util.List;

import org.lanqiao.entity.AmUser;
import org.lanqiao.mapper.RegistMapper;
import org.lanqiao.service.RegistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class RegisServiceImpl implements RegistService {
	@Autowired
	RegistMapper registMapper;
	public void addUser(AmUser user) {
		registMapper.addUser(user);
	}
	public List<HashMap> selectUser() {
		List<HashMap> selectUser = registMapper.selectUser();
		return selectUser;
	}
}
