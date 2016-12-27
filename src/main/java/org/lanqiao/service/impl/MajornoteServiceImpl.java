package org.lanqiao.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.lanqiao.mapper.MajornoteMapper;
import org.lanqiao.service.MajornoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MajornoteServiceImpl implements MajornoteService{
    
    @Autowired
    MajornoteMapper majornoteMapper;
    
    public List<HashMap> findAllNote(){
        
        List<HashMap> list= majornoteMapper.findAllNote();
        
        return list;
    }
}
