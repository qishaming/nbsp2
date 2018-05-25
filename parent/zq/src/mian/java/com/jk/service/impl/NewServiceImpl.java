package com.jk.service.impl;

import com.jk.bean.Goods;
import com.jk.bean.News;
import com.jk.dao.NewDao;

import com.jk.service.NewService;
import com.sun.org.apache.bcel.internal.generic.NEW;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/13.
 */
@Service
public class NewServiceImpl implements NewService {
    @Autowired
    private NewDao newDao;

    public List<News> queryNew() {
        return newDao.queryNew();
    }

    public List<News> queryNewHtml(Integer newsid) {
        return newDao.queryNewHtml(newsid);
    }

    public List<Goods> hxGoods(Integer goodsid) {

        return newDao.hxGoods(goodsid) ;
    }









    }


