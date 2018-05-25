package com.jk.service.impl;

import com.jk.dao.SyzDao;
import com.jk.pojo.Goods;
import com.jk.pojo.Size;
import com.jk.service.SyzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SyzServiceImpl implements SyzService {

    @Autowired
    private SyzDao syzDao;

    @Override
    public Goods queryGoods(Goods goodss) {
        String goodsid=goodss.getGoodsid().toString();
        return syzDao.queryGoods(goodsid);
    }
    @Override
    public List querySize() {

        return syzDao.querySize();
    }

    @Override
    public List<Goods> queryGoodss() {
        return syzDao.queryGoodss();
    }

    @Override
    public List hxGoods(Integer goodsid) {

        return syzDao.hxGoods(goodsid);
    }
}
