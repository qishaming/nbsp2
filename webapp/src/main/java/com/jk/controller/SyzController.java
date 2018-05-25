package com.jk.controller;

import com.alibaba.fastjson.JSON;
import com.jk.pojo.Goods;
import com.jk.pojo.Size;
import com.jk.service.SyzService;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/syzgoods")
public class SyzController {

    @Autowired
    private SyzService syzService;

    @RequestMapping("/queryGoods")
    @ResponseBody
    public String queryGoods(Goods goodss) {
      Goods goods = syzService.queryGoods(goodss);
      return JSON.toJSONString(goods);
    }
    @RequestMapping("/querySize")
    @ResponseBody
    public String querySize(Size sizes) {
      List size= syzService.querySize();
      return JSON.toJSONString(size);
    }
    //商品静态化
    @RequestMapping("/queryShowHtml")
    public String queryShowHtml() throws IOException, TemplateException {
        List<Goods> list  =syzService.queryGoodss();

        for (int i = 0; i < list.size(); i++) {
            queryGoodsHtml( list.get(i).getGoodsid());

        }

        return "";
    }
    //商品详情页面
    @RequestMapping("/queryGoodsHtml")
    public String queryGoodsHtmlone(Integer  goodsid){
        String tiao="/pyg/" + goodsid + ".html";
        return tiao;
    }



    //静态化
    public String queryGoodsHtml(Integer  goodsid) throws IOException, TemplateException {
        List<Goods> list=syzService.hxGoods(goodsid);
        //1.创建配置类
        Configuration configuration = new Configuration();
        //2.设置模板所在的目录
        configuration.setDirectoryForTemplateLoading(new File("D:\\idea空间\\nbsp2\\webapp\\src\\main\\webapp\\pyg"));
        //3.设置字符集
        configuration.setDefaultEncoding("utf-8");
        //4.加载模板
        Template template = configuration.getTemplate("goods.ftl");
        //5.创建Writer对象
        Writer out = new FileWriter(new File("D:\\idea空间\\nbsp2\\webapp\\src\\main\\webapp\\pyg\\" + goodsid + ".html"));
        //6.创建数据模型
        Map root = new HashMap();
        root.put("list", list);
        //7.输出
        template.process(root, out);
        //8.关闭Writer对象
        out.flush();
        out.close();
        String tiao="/pyg/" + goodsid + ".html";
        return tiao;
    }
}
