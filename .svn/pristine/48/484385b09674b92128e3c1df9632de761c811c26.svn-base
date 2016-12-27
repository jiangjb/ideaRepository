package org.lanqiao.controller;

import java.util.HashMap;
import java.util.List;

import org.lanqiao.service.MajornoteService;
import org.lanqiao.service.impl.MajornoteServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 
 * @ClassName MajornoteController
 * @Description TODO首页相关的操作
 * @author wangzhoucheng
 * @Date 2016年11月28日 下午7:36:15
 * @version 1.0.0
 */

@Controller
@RequestMapping("/index")
public class MajornoteController {
    @Autowired
    MajornoteService majornoteService;
    @RequestMapping("/findAll")
    public String findAll(Model model){
        
        List<HashMap> list = majornoteService.findAllNote();
        model.addAttribute("list", list);
        
        return "errorpage/main";
    }
    
}
