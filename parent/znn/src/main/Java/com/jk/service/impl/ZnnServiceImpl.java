package com.jk.service.impl;

import com.jk.bean.GuangGao;
import com.jk.dao.ZnnDao;

import com.jk.service.ZnnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ZnnServiceImpl implements ZnnService {

    @Autowired
    private ZnnDao znnDao;

    @Override
    public List<GuangGao> queryPhoto() {
        return znnDao.queryPhoto();
    }

    @Override
    public List queryMerchantInfo(Integer gmid) {
        return znnDao.queryMerchantInfo(gmid);
    }
}
