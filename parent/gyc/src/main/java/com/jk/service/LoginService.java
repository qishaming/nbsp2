package com.jk.service;

import com.jk.bean.BigType;
import com.jk.bean.Goods;
import com.jk.bean.SmallType;
import com.jk.bean.User;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface LoginService {


    List queryStu();

    String loginUser(User user, HttpServletRequest request);

    List<BigType> queryDaXiao();

    List<SmallType> queryXiao(Integer bid);

    List<Goods> queryGoods(Integer id);

    List<Goods> queryGoodsInfo(Integer id);
}
