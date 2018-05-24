package com.jk.bean;

public class BigType {

    private  Integer bigTypeId;
    private  String bigTypeName;

    public Integer getBigTypeId() {
        return bigTypeId;
    }

    public void setBigTypeId(Integer bigTypeId) {
        this.bigTypeId = bigTypeId;
    }

    public String getBigTypeName() {
        return bigTypeName;
    }

    public void setBigTypeName(String bigTypeName) {
        this.bigTypeName = bigTypeName;
    }

    @Override
    public String toString() {
        return "BigType{" +
                "bigTypeId=" + bigTypeId +
                ", bigTypeName='" + bigTypeName + '\'' +
                '}';
    }
}
