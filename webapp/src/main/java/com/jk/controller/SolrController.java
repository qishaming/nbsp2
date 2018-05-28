package com.jk.controller;

import com.jk.pojo.Goods;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2018/5/20.
 */
@Controller
@RequestMapping("listsolr")
public class SolrController {
    @RequestMapping("list")

   public String list(String  key , Model model) throws  Exception{
        //访问solr的路径/
        String  solrUrl="http://192.168.3.245:8080/solr/mycore";
        HttpSolrServer solrServer =new HttpSolrServer(solrUrl);

        SolrQuery solrQuery = new SolrQuery();
        solrQuery.setQuery("goodsName:"+key);
        QueryResponse query = solrServer.query(solrQuery);
        SolrDocumentList results = query.getResults();
        List<Goods> list =new ArrayList<Goods>();

        for(SolrDocument solrDocumen : results){
            Goods goodsa=new Goods();
            goodsa.setGoodsname((String) solrDocumen.get("goodsName"));
            goodsa.setGoodsimg((String)solrDocumen.get("goodsimg"));
            goodsa.setGoodsPrice((String)solrDocumen.get("goodsPrice"));
            list.add(goodsa);
    }
        model.addAttribute("list",list);
      return  "searchs.jsp";
    }

}
