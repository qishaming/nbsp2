package com.jk.controller;

import com.jk.bean.User;
import com.jk.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("jpl")
public class JplOrderController {
    @Autowired
    private StuService service;

    @RequestMapping("queryOrder")
    public String queryOrder(Integer orderFormState, Model model, HttpServletRequest request){
        User u = (User) request.getSession().getAttribute("user");
        Integer userid = u.getUserid();
        List list = service.queryOrder(orderFormState,userid);
        model.addAttribute("list",list);
        return "userOrder/userOrder.jsp";
    }

    @RequestMapping("shouOrder")
    @ResponseBody
    public String shouOrder(Integer orderFormId){
        service.updateshouOrder(orderFormId);
        return "success";
    }
    @RequestMapping("delOrder")
    @ResponseBody
    public String delOrder(Integer orderFormId){
        service.delOrder(orderFormId);
        return "success";
    }
    @RequestMapping("tuiOrder")
    @ResponseBody
    public String tuiOrder(Integer orderFormId){
        service.updatetuiOrder(orderFormId);
        return "success";
    }

}
