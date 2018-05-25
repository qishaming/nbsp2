package com.jk.service;


import com.jk.bean.Goods;
import com.jk.bean.News;
import com.sun.org.apache.bcel.internal.generic.NEW;

import java.util.List;

/**
 * Created by Administrator on 2018/5/13.
 */
public interface NewService {
    List<News> queryNew();


    List<News> queryNewHtml(Integer newsid);


    List<Goods> hxGoods(Integer goodsid);
}
