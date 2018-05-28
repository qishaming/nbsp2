package com.jk.pojo;

public class OrderForm {

    private String orderFormId;
    private Integer customerCount;
    private Integer customerId;
    private Integer goodsid;
    private Integer merchantId;
    private Integer orderFormState;
    private Double orderFormTotalPrice;
    private String orderRegisterTime;
    private String orderUpdateTime;

    public String getOrderFormId() {
        return orderFormId;
    }

    public void setOrderFormId(String orderFormId) {
        this.orderFormId = orderFormId;
    }

    public Integer getCustomerCount() {
        return customerCount;
    }

    public void setCustomerCount(Integer customerCount) {
        this.customerCount = customerCount;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public Integer getGoodsid(Integer id) {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public Integer getMerchantId() {
        return merchantId;
    }

    public void setMerchantId(Integer merchantId) {
        this.merchantId = merchantId;
    }

    public Integer getOrderFormState() {
        return orderFormState;
    }

    public void setOrderFormState(Integer orderFormState) {
        this.orderFormState = orderFormState;
    }

    public Double getOrderFormTotalPrice() {
        return orderFormTotalPrice;
    }

    public void setOrderFormTotalPrice(Double orderFormTotalPrice) {
        this.orderFormTotalPrice = orderFormTotalPrice;
    }

    public String getOrderRegisterTime() {
        return orderRegisterTime;
    }

    public void setOrderRegisterTime(String orderRegisterTime) {
        this.orderRegisterTime = orderRegisterTime;
    }

    public String getOrderUpdateTime() {
        return orderUpdateTime;
    }

    public void setOrderUpdateTime(String orderUpdateTime) {
        this.orderUpdateTime = orderUpdateTime;
    }

    @Override
    public String toString() {
        return "OrderForm{" +
                "orderFormId='" + orderFormId + '\'' +
                ", customerCount=" + customerCount +
                ", customerId=" + customerId +
                ", goodsid=" + goodsid +
                ", merchantId=" + merchantId +
                ", orderFormState=" + orderFormState +
                ", orderFormTotalPrice=" + orderFormTotalPrice +
                ", orderRegisterTime='" + orderRegisterTime + '\'' +
                ", orderUpdateTime='" + orderUpdateTime + '\'' +
                '}';
    }
}
