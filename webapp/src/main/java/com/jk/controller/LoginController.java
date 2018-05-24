package com.jk.controller;

import com.alibaba.fastjson.JSON;
import com.jk.bean.BigType;
import com.jk.bean.Goods;
import com.jk.bean.SmallType;
import com.jk.bean.User;
import com.jk.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("login")
public class LoginController {
     @Resource
    private LoginService loginService;

    /**
     * 测试
     * @param model
     * @return
     */
    @RequestMapping("queryStu")
    private String queryStu(Model model){
        List list=   loginService.queryStu();
        model.addAttribute("l",list);
        return "show";
    }
    /**
     * 用户登录
     * @param user
     * @param request
     * @return
     */
    @RequestMapping("loginUser")
    @ResponseBody
    public String loginUser(User user, HttpServletRequest request ){
        System.err.print(user.getUsername()+"aaa"+user.getPassword());
        String  userLong= loginService.loginUser(user,request);
        return userLong;
    }

    /**
     * 加载大小类
     */
    @RequestMapping("queryDaXiao")
    @ResponseBody
    public String queryDaXiao(){
        List<BigType> list= loginService.queryDaXiao();

        return JSON.toJSONString(list);
    }
    /**
     * 查询小类
     * @param bid
     * @return
     */
    @RequestMapping("queryXiao")
    @ResponseBody
    public String queryXiao(Integer bid){
        List<SmallType> list= loginService.queryXiao(bid);
        return JSON.toJSONString(list);
    }

    /**
     * 查询商品去前8
     * @return
     */
    @RequestMapping("queryGoods")
    @ResponseBody
    public String queryGoods(Integer id){
            List<Goods>   list= loginService.queryGoods(id);
        return JSON.toJSONString(list);
    }

    /**
     * 查询某个类型所有商品
     * @param id
     * @return
     */
    @RequestMapping("queryGoodsInfo")
    @ResponseBody
    public String queryGoodsInfo(Integer id){
        List<Goods>   list=  loginService.queryGoodsInfo(id);
        return JSON.toJSONString(list);
    }


    @RequestMapping("tiao1")
    public String tiao1(Model model){


        return "search";
    }
}
