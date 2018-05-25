package com.jk.controller;


import com.alibaba.fastjson.JSON;

import com.jk.bean.Goods;
import com.jk.bean.News;
import com.jk.service.NewService;
import com.sun.org.apache.bcel.internal.generic.NEW;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.apache.poi.xwpf.usermodel.*;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTShd;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STShd;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import freemarker.template.Configuration;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;

/**
 * Created by Administrator on 2018/5/13.
 */
@Controller
@RequestMapping("/new")
public class NewController {
    @Autowired
    private NewService newService;

    @RequestMapping("queryNew")
    @ResponseBody
    public String queryNew() {
        List<News> list = newService.queryNew();

        return JSON.toJSONString(list);

    }

    @RequestMapping("/queryNewHtml")
    public String queryNewHtml(Integer newsid) throws IOException, TemplateException {

        List<News> list = newService.queryNewHtml(newsid);
        //1.创建配置类
        Configuration configuration = new Configuration();
        //2.设置模板所在的目录
        configuration.setDirectoryForTemplateLoading(new File("D:\\idea空间\\nbsp2\\webapp\\src\\main\\webapp\\newtemplates"));
        //3.设置字符集
        configuration.setDefaultEncoding("utf-8");
        //4.加载模板
        Template template = configuration.getTemplate("new.ftl");
        //5.创建Writer对象
        Writer out = new FileWriter(new File("D:\\idea空间\\nbsp2\\webapp\\src\\main\\webapp\\newtemplates\\" + newsid + ".html"));

        //6.创建数据模型
        Map root = new HashMap();
        root.put("list", list);
        //7.输出
        template.process(root, out);
        //8.关闭Writer对象
        out.flush();
        out.close();
        String tiao="/newtemplates/" + newsid + ".html";
        return tiao;


    }

}





