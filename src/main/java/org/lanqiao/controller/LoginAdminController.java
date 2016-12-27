package org.lanqiao.controller;

import javax.servlet.http.HttpSession;

import org.lanqiao.entity.AmAdmin;
import org.lanqiao.entity.AmUser;
import org.lanqiao.service.LoginAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @ClassName LoginAdminController
 * @Description 后台登录
 * @author wangzhoucheng
 * @Date 2016年12月8日 下午12:31:00
 * @version 1.0.0
 */
@Controller
@RequestMapping("/back")
public class LoginAdminController {

    @Autowired
    LoginAdminService loginAdminService; 
    
    @RequestMapping("/login")
    public String loginAdmin(String username,String password,Model model,HttpSession session){
        
        AmAdmin user = loginAdminService.findUserByNameAndPassword(username, password);
        
        if(user!=null){
            session.setAttribute("admin", user);
            return "redirect:/pages/backpage/index";
        }else{
            model.addAttribute("msg", "用户名或者密码错误！");
            return "/backpage/login";
        }
        
    }
    @RequestMapping("/logout")
    public String logoutAdmin(String username,String password,Model model,HttpSession session){
        
        AmAdmin user = (AmAdmin) session.getAttribute("admin");
        if(user!=null){
            session.removeAttribute("admin");
        }
        
        return "/backpage/login";
    }
}