package com.jk.service;

import com.jk.pojo.Goods;
import com.jk.pojo.Size;

import java.util.List;

public interface SyzService {

    Goods queryGoods(Goods goodss);

    List  querySize();

    List<Goods> queryGoodss();

    List<Goods> hxGoods(Integer goodsid);
}
