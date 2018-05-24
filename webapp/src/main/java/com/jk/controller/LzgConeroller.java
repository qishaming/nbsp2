package com.jk.controller;



import com.alibaba.fastjson.JSONObject;
import com.jk.pojo.Goods;

import com.jk.service.LzgService;
import com.jk.util.CookieUtils;

import com.jk.util.JsonUtils;
import org.apache.commons.lang.StringUtils;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller
public class LzgConeroller {

    @Autowired
    private LzgService lzgService;


    /*private Date cookieMaxage;*/


    @RequestMapping("gouwu")
    @ResponseBody
    public List<Goods> addCartNum(Integer itemId, Integer num,
                                  HttpServletRequest request, HttpServletResponse response){
            //获取购物车列表
            List<Goods> cartList1 =getCartListFromCookie(request);
            //判断购物车中是否有该商品
        boolean flag = false;


        /*int size=(int) cartList1.size();
        Goods[] cartList= (Goods[])cartList1.toArray(new Goods[size]);*/

        /*Goods[]  cartList = cartList1.toArray(new Goods[ cartList1.size()]);*/

        for (Goods Goods : cartList1) {
            if(Goods.getGoodsid()==itemId){
                flag = true;
                //存在该商品,数量相加
                Goods.setGoodnum(Goods.getGoodnum()+num);
                //跳出循环
                break;
            }
        }
        if(!flag){
            //没有的话，调用服务查询该商品
            Goods Goods = lzgService.getItemById(itemId);
            System.out.println(Goods.toString());
            System.out.println("从数据库查询商品信息");
            //设置数量
            Goods.setGoodnum(num);
            //取一张图片
            String image = Goods.getGoodsimg();
            if(StringUtils.isNotBlank(image)){
                Goods.setGoodsimg(image.split(",")[0]);
            }
            //商品添加到购物车列表
            cartList1.add(Goods);
        }
        //购物车信息写入cookie
        CookieUtils.setCookie(request, response, "cart1",
                cartList1.toString(), true);

        //返回逻辑视图

        return cartList1;
    }
    /*
     *从cookie中获取购物车列表
     */
    public List getCartListFromCookie(HttpServletRequest request){
        String string = CookieUtils.getCookieValue(request, "cart1", true);
        //判断是否为空
        Cookie[] cookie = request.getCookies();

        if(StringUtils.isBlank(string)){
            //空的话也不能返回null
            return new ArrayList<>();
        }


        //转为商品列表
       string = string.replaceAll("Goods","");
        string = string.replaceAll("=",":");
        List<Goods> Goodss = JSONObject.parseArray(string, Goods.class);

        return Goodss;
    }

    //从购物车取数据
    @RequestMapping("cart")
    public ModelAndView showCartList(HttpServletRequest request){
        ModelAndView mav  = new ModelAndView("one/home/shopcart");
        //获取购物车列表
        List cartList = getCartListFromCookie(request);
        //绑定参数
        request.setAttribute("cart1", cartList);
        mav.addObject("cart1",cartList);
        System.err.println("已从cookie中取到购物车列表");

        //返回逻辑视图
        return mav;
    }

    //购物车跳转至结算页面
    @RequestMapping("cartToJiesuan")
    public ModelAndView cartToJiesuan(HttpServletRequest request){
        ModelAndView mav  = new ModelAndView("one/home/pay");
        //获取购物车列表
        List cartList = getCartListFromCookie(request);
        //绑定参数
        request.setAttribute("cart1", cartList);
        mav.addObject("cart1",cartList);
        System.err.println("已从cookie中取到购物车列表,bing并跳转至结算页面");
        //返回逻辑视图
        return mav;
    }




    //减一
    @RequestMapping("/cart/update")
    @ResponseBody
    public Integer updateCartNum(Integer itemId, Integer num,
                                  HttpServletRequest request, HttpServletResponse response){
        //获取购物车列表
        List<Goods> cartList = getCartListFromCookie(request);
        Integer jiacount=null;
        //取所选择的需要更新的商品
        for (Goods tbItem : cartList) {
            if(tbItem.getGoodsid()==itemId){

                //更新商品数量
                jiacount=tbItem.getGoodnum()-num;
                        tbItem.setGoodnum(jiacount);

                //跳出循环
                break;
            }
        }
        //购物车信息写入cookie
        CookieUtils.setCookie(request, response, "cart1",
                JsonUtils.objectToJson(cartList), true);
        return jiacount;
    }

   //加一
    @RequestMapping("/cart/update1")
    @ResponseBody
    public Integer updateCartNum1(Integer itemId, Integer num,
                                HttpServletRequest request, HttpServletResponse response){
        //获取购物车列表
        List<Goods> cartList = getCartListFromCookie(request);
        Integer jiacount=null;
        //取所选择的需要更新的商品
        for (Goods tbItem : cartList) {
            if(tbItem.getGoodsid()==itemId){
                //更新商品数量
               jiacount= tbItem.getGoodnum()+num;
                tbItem.setGoodnum(jiacount);

                //跳出循环
                break;
            }
        }
        //购物车信息写入cookie
        CookieUtils.setCookie(request, response, "cart1",
                JsonUtils.objectToJson(cartList), true);
        return jiacount;
    }

}




