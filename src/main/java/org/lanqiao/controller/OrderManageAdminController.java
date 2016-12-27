package org.lanqiao.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.lanqiao.service.OrderManageAdminService;
import org.lanqiao.service.impl.OrderManageAdminServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/order")
public class OrderManageAdminController {
	@Autowired
	OrderManageAdminService orderService;
	/**
	 * 查询订单
	 * @param request
	 * @return
	 */
	@RequestMapping("/select")
	public String SelectAllOrder(HttpServletRequest request){
		List<HashMap> list = orderService.selectAllOrder();
		int count  = list.size();
		request.setAttribute("orderList", list);
		request.setAttribute("count", count);
		return "backpage/order-list";
	}
	@RequestMapping("/deleteOne")
	@ResponseBody
	public Object deleteOneOrder(String orderId){
		orderService.deleteOrderByOrderId(orderId);
		return "true";
	}
	@RequestMapping("/deleteSome")
	@ResponseBody
	public Object deleteSomeOrder(String orderIds){
		String [] s2= orderIds.split("&id=");
		orderService.deleteOrders(s2);
		return "true";
		
	}
}
