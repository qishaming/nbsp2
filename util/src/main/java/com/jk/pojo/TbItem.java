package com.jk.pojo;


public class TbItem {

    private Integer goodsid;
    private String goodsname;
    private String goodsimg;
    private String shangdate;
    private Integer goodsprice;
    private Integer zhuangtai;
    private Integer chunum;  //商品的数量
    private String goodscolor;
    private String goodsgg;  //规格
    private Integer mintypeid;   //小类
    private String goodsinfo;

    public Integer getGoodsid() {
        return goodsid;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public String getGoodsimg() {
        return goodsimg;
    }

    public String getShangdate() {
        return shangdate;
    }

    public Integer getGoodsprice() {
        return goodsprice;
    }

    public Integer getZhuangtai() {
        return zhuangtai;
    }

    public Integer getChunum() {
        return chunum;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public void setGoodsimg(String goodsimg) {
        this.goodsimg = goodsimg;
    }

    public void setShangdate(String shangdate) {
        this.shangdate = shangdate;
    }

    public void setGoodsprice(Integer goodsprice) {
        this.goodsprice = goodsprice;
    }

    public void setZhuangtai(Integer zhuangtai) {
        this.zhuangtai = zhuangtai;
    }

    public void setChunum(Integer chunum) {
        this.chunum = chunum;
    }

    public String getGoodsinfo() {
        return goodsinfo;
    }

    public void setGoodsinfo(String goodsinfo) {
        this.goodsinfo = goodsinfo;
    }

    public Integer getMintypeid() {
        return mintypeid;
    }

    public void setMintypeid(Integer mintypeid) {
        this.mintypeid = mintypeid;
    }

    public String getGoodscolor() {
        return goodscolor;
    }

    public String getGoodsgg() {
        return goodsgg;
    }

    public void setGoodscolor(String goodscolor) {
        this.goodscolor = goodscolor;
    }

    public void setGoodsgg(String goodsgg) {
        this.goodsgg = goodsgg;
    }

    @Override
    public String toString() {
        return "Shang{" +
                "goodsid=" + goodsid +
                ", goodsname='" + goodsname + '\'' +
                ", goodsimg='" + goodsimg + '\'' +
                ", shangdate='" + shangdate + '\'' +
                ", goodsprice=" + goodsprice +
                ", zhuangtai=" + zhuangtai +
                ", chunum=" + chunum +
                ", goodscolor=" + goodscolor +
                ", goodsgg=" + goodsgg +
                ", mintypeid=" + mintypeid +
                ", goodsinfo='" + goodsinfo + '\'' +
                '}';
    }
}
