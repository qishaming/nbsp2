package com.jk.dao;


import com.jk.pojo.Goods;
import com.jk.pojo.OrderForm;

public interface LzgDao {

    Goods getItemById(Integer itemId);


    void addBrand(OrderForm orderForm1);
}
