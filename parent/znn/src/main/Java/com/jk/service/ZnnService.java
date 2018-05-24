package com.jk.service;


import com.jk.bean.GuangGao;

import java.util.List;

public interface ZnnService {
    List<GuangGao> queryPhoto();

    List queryMerchantInfo(Integer gmid);
}
