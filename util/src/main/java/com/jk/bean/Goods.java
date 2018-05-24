package com.jk.bean;
public class Goods {
    private Integer goodsId;
    private Integer goodnum;
    private Integer brandId;
    private Integer goodsAuditState;
    private String goodsDiscounts;
    private String goodsPrice;
    private String goodsimg;
    private String goodsName;
    private Integer sizeId;
    private String goodsScript;
    private Integer merchantId;
    private Integer smallTypeId;
    //联查的大小类名称
    private String smallTypeName;
    private String bigTypeName;

    public String getSmallTypeName() {
        return smallTypeName;
    }

    public void setSmallTypeName(String smallTypeName) {
        this.smallTypeName = smallTypeName;
    }

    public String getBigTypeName() {
        return bigTypeName;
    }

    public void setBigTypeName(String bigTypeName) {
        this.bigTypeName = bigTypeName;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getGoodnum() {
        return goodnum;
    }

    public void setGoodnum(Integer goodnum) {
        this.goodnum = goodnum;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public Integer getGoodsAuditState() {
        return goodsAuditState;
    }

    public void setGoodsAuditState(Integer goodsAuditState) {
        this.goodsAuditState = goodsAuditState;
    }

    public String getGoodsDiscounts() {
        return goodsDiscounts;
    }

    public void setGoodsDiscounts(String goodsDiscounts) {
        this.goodsDiscounts = goodsDiscounts;
    }

    public String getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(String goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public String getGoodsimg() {
        return goodsimg;
    }

    public void setGoodsimg(String goodsimg) {
        this.goodsimg = goodsimg;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public Integer getSizeId() {
        return sizeId;
    }

    public void setSizeId(Integer sizeId) {
        this.sizeId = sizeId;
    }

    public String getGoodsScript() {
        return goodsScript;
    }

    public void setGoodsScript(String goodsScript) {
        this.goodsScript = goodsScript;
    }

    public Integer getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Integer merchantId) {
        this.merchantId = merchantId;
    }

    public Integer getSmallTypeId() {
        return smallTypeId;
    }

    public void setSmallTypeId(Integer smallTypeId) {
        this.smallTypeId = smallTypeId;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "goodsId=" + goodsId +
                ", goodnum=" + goodnum +
                ", brandId=" + brandId +
                ", goodsAuditState=" + goodsAuditState +
                ", goodsDiscounts='" + goodsDiscounts + '\'' +
                ", goodsPrice='" + goodsPrice + '\'' +
                ", goodsimg='" + goodsimg + '\'' +
                ", goodsName='" + goodsName + '\'' +
                ", sizeId=" + sizeId +
                ", goodsScript='" + goodsScript + '\'' +
                ", merchantId=" + merchantId +
                ", smallTypeId=" + smallTypeId +
                ", smallTypeName='" + smallTypeName + '\'' +
                ", bigTypeName='" + bigTypeName + '\'' +
                '}';
    }
}
