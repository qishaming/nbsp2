package com.jk.bean;

public class SmallType {

    private Integer  smallTypeId;
    private Integer  bigTypeId;
    private String  smallTypeName;

    public Integer getSmallTypeId() {
        return smallTypeId;
    }

    public void setSmallTypeId(Integer smallTypeId) {
        this.smallTypeId = smallTypeId;
    }

    public Integer getBigTypeId() {
        return bigTypeId;
    }

    public void setBigTypeId(Integer bigTypeId) {
        this.bigTypeId = bigTypeId;
    }

    public String getSmallTypeName() {
        return smallTypeName;
    }

    public void setSmallTypeName(String smallTypeName) {
        this.smallTypeName = smallTypeName;
    }

    @Override
    public String toString() {
        return "SmallType{" +
                "smallTypeId=" + smallTypeId +
                ", bigTypeId=" + bigTypeId +
                ", smallTypeName='" + smallTypeName + '\'' +
                '}';
    }
}
