package com.jk.service.impl;


import com.jk.bean.User;
import com.jk.dao.LzgDao;
import com.jk.pojo.Goods;
import com.jk.pojo.OrderForm;
import com.jk.service.LzgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@Service
public class LzgServiceImpl implements LzgService {


    @Autowired
    private LzgDao mapper;

    public Goods getItemById(Integer itemId) {

        return mapper.getItemById(itemId);
    }

    public void addBrand(Integer id, Integer gnum, Double gprice, OrderForm orderForm, HttpServletRequest request) {

        //创建一个订单表对象
        OrderForm orderForm1 = new OrderForm();
        //订单ID
        UUID uuid = UUID.randomUUID();
        orderForm1.setOrderFormId(uuid.toString());
        //订单中的商品ID
        orderForm1.setGoodsid(id);
        //订单中客户ID，从session中获取user，进而获取userid
        User user = (User) request.getSession().getAttribute("user");

        orderForm1.setCustomerId(1);
        //订单数量--前台传
        orderForm1.setCustomerCount(gnum);
        //订单初始状态 0
        orderForm1.setOrderFormState(0);
        //订单总价格  前台的单价*数量
        orderForm1.setOrderFormTotalPrice(gnum*gprice);
        System.out.println(gnum*gprice);
        //订单产生时间，获取一个当前时间
        Date day=new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.err.println(df.format(day));
        orderForm1.setOrderRegisterTime(String.valueOf(df.format(day)));

        mapper.addBrand(orderForm1);

    }
}
