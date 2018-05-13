package com.jk.controller;

import com.jk.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("stu")
public class StuController {
    @Autowired
    private StuService stuService;

    @RequestMapping("queryStu")
    private String queryStu(Model model){
     List list=   stuService.queryStu();

        model.addAttribute("l",list);
        return "show";
    }
}
