package com.jk.dao;



import com.jk.bean.GuangGao;

import java.util.List;

public interface ZnnDao {

    List<GuangGao> queryPhoto();

    List queryMerchantInfo(Integer gmid);
}
