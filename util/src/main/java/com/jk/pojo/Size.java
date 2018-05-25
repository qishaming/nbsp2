package com.jk.pojo;

public class Size {
    private Integer goodsSizeId;
    private String goodsSizeName;

    public Integer getGoodsSizeId() {
        return goodsSizeId;
    }

    public void setGoodsSizeId(Integer goodsSizeId) {
        this.goodsSizeId = goodsSizeId;
    }

    public String getGoodsSizeName() {
        return goodsSizeName;
    }

    public void setGoodsSizeName(String goodsSizeName) {
        this.goodsSizeName = goodsSizeName;
    }

    @Override
    public String toString() {
        return "Size{" +
                "goodsSizeId=" + goodsSizeId +
                ", goodsSizeName='" + goodsSizeName + '\'' +
                '}';
    }
}

