package com.jk.dao;

import com.jk.bean.BigType;
import com.jk.bean.Goods;
import com.jk.bean.SmallType;
import com.jk.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoginDao {
    List queryStu();

    User loginUser( User user);

    List<BigType> queryDaXiao();

    List<SmallType> queryXiao(@Param("bid") Integer bid);

    List<Goods> queryGoods(@Param("id") Integer id);

    List<Goods> queryGoodsInfo(@Param("id")Integer id);

    List<Goods> queryGoodsInfoJg(Integer id);
}
