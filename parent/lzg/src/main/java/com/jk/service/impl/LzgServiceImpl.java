package com.jk.service.impl;


import com.jk.dao.LzgDao;
import com.jk.pojo.Goods;
import com.jk.service.LzgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LzgServiceImpl implements LzgService {


    @Autowired
    private LzgDao mapper;

    public Goods getItemById(Integer itemId) {

        return mapper.getItemById(itemId);
    }
}
