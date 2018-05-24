package com.jk.controller;

import com.jk.bean.GuangGao;
import com.jk.service.StuService;
import com.jk.service.ZnnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("ZnnController")
public class ZnnController {

    @Autowired
    private ZnnService znnService;

    @RequestMapping("queryPhoto")
    @ResponseBody
    private List<GuangGao> queryPhoto(){
        List<GuangGao> list=znnService.queryPhoto();
        return list;
    }

   /* 这是存到session中的方法@RequestMapping("toqueryMerchantInfo")
    private String toqueryMerchantInfo(Integer gmid, HttpServletRequest request){
        request.getSession().setAttribute("gmid",gmid);
        return "showMerchantInfo";
    }*/
    @RequestMapping("toqueryMerchantInfo")
    @ResponseBody
    private ModelAndView toqueryMerchantInfo(Integer gmid){
        ModelAndView mav=new ModelAndView();
        mav.addObject("gmid",gmid);
        mav.setViewName("showMerchantInfo");
       return mav;
    }
    @RequestMapping("queryMerchantInfo")
    @ResponseBody
    private List queryMerchantInfo(/*HttpServletRequest request*/Integer gmid){
        /*Integer  gmid=(Integer) request.getSession().getAttribute("gmid");*/
        return znnService.queryMerchantInfo(gmid);
    }


}
