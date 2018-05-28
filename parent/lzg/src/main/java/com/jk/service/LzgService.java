package com.jk.service;



import com.jk.pojo.Goods;
import com.jk.pojo.OrderForm;

import javax.servlet.http.HttpServletRequest;

public interface LzgService {


    Goods getItemById(Integer itemId);


    void addBrand(Integer id, Integer gnum, Double gprice, OrderForm orderForm, HttpServletRequest request);
}
