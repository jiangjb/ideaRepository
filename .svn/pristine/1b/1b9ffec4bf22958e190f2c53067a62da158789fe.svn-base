package org.lanqiao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @ClassName ViewController
 * @Description 直接查看页面的controller
 * @author wangzhoucheng
 * @Date 2016年11月29日 下午4:36:47
 * @version 1.0.0
 */
@Controller
@RequestMapping("/pages")
public class ViewController {
    
    @RequestMapping("/addSchedule")
    public String view(){
        
       return "/backpage/schedule-add"; 
    }
    @RequestMapping("/backpage/{url}")
    public String view(@PathVariable("url") String viewname){
        
       return "/backpage/" + viewname; 
    }
    
//    @RequestMapping("/frontpage/{url}")
//    public ModelAndView login(@PathVariable("url") String viewname,String returnURL) {
//        ModelAndView view = new ModelAndView();
//        //把拦截前路径存下来，以便登入成功可以直接请求到登录前的页面
//        if(returnURL!=null ){
//            view.addObject("returnURL", returnURL);
//        }
//        view.setViewName("/frontpage/" + viewname);
//        return view;
//    }
    
    
    @RequestMapping("/frontpage/index")
    public String index() {
        return "/frontpage/index";
    }
    @RequestMapping("/frontpage/login")
    public String login() {
        return "/frontpage/login";
    }
    @RequestMapping("/frontpage/regist")
    public String regist() {
        return "/frontpage/regist";
    }
}
