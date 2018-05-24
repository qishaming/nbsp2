package com.jk.pojo;




public class Goods {

   private Integer repertoryNumber;
    private  Integer goodsid;
    private String goodsname;
    private Integer typeid;
    private Integer brandId;
    private Integer sizeId;
    private String goodsimg;
    private String goodsPrice;
    private String goodsDiscounts;
    private Integer goodsAuditState;
    private Integer merchantId;
    private Integer goodnum;

    public Integer getGoodnum() {
        return goodnum;
    }

    public void setGoodnum(Integer goodnum) {
        this.goodnum = goodnum;
    }

    public Integer getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Integer merchantId) {
        this.merchantId = merchantId;
    }

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public Integer getTypeid() {
        return typeid;
    }

    public void setTypeid(Integer typeid) {
        this.typeid = typeid;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public Integer getSizeId() {
        return sizeId;
    }

    public void setSizeId(Integer sizeId) {
        this.sizeId = sizeId;
    }

    public String getGoodsimg() {
        return goodsimg;
    }

    public void setGoodsimg(String goodsimg) {
        this.goodsimg = goodsimg;
    }

    public String getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(String goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public String getGoodsDiscounts() {
        return goodsDiscounts;
    }

    public void setGoodsDiscounts(String goodsDiscounts) {
        this.goodsDiscounts = goodsDiscounts;
    }

    public Integer getGoodsAuditState() {
        return goodsAuditState;
    }

    public void setGoodsAuditState(Integer goodsAuditState) {
        this.goodsAuditState = goodsAuditState;
    }
    @Override
    public String toString() {
        return "Goods{" +
                "repertoryNumber=" + repertoryNumber +
                ", goodsid=" + goodsid +
                ", goodsname='" + goodsname + '\'' +
                ", typeid=" + typeid +
                ", brandId=" + brandId +
                ", sizeId=" + sizeId +
                ", goodsimg='" + goodsimg + '\'' +
                ", goodsPrice='" + goodsPrice + '\'' +
                ", goodsDiscounts='" + goodsDiscounts + '\'' +
                ", goodsAuditState=" + goodsAuditState +
                ", merchantId=" + merchantId +
                ", goodnum=" + goodnum +
                '}';
    }

    public Integer getRepertoryNumber() {
        return repertoryNumber;
    }

    public void setRepertoryNumber(Integer repertoryNumber) {
        this.repertoryNumber = repertoryNumber;
    }

}
