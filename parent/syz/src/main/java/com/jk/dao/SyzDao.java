package com.jk.dao;

import com.jk.pojo.Goods;
import com.jk.pojo.Size;

import java.util.List;

public interface SyzDao {

    Goods queryGoods(String goodsid);


    List querySize();

    List<Goods> queryGoodss();

    List hxGoods(Integer goodsid);
}
