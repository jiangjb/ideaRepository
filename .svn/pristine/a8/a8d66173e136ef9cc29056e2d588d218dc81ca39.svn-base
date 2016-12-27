package org.lanqiao.service.impl;

import java.util.HashMap;
import java.util.List;

import org.lanqiao.mapper.OrderManageAdminMapper;
import org.lanqiao.service.OrderManageAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class OrderManageAdminServiceImpl implements OrderManageAdminService {
	@Autowired
	OrderManageAdminMapper orderService;
	public List<HashMap> selectAllOrder() {
		List<HashMap> list = orderService.selectAllOrder();
		return list;
	}
	public void deleteOrderByOrderId(String orderId) {
		orderService.deleteOrderByOrderId(orderId);
	}
	public void deleteOrders(String[] orderIds) {
		orderService.deleteOrders(orderIds);
	}

}
