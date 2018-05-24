package com.jk.bean;

public class GuangGao {

    private  Integer gid;
    private Integer gstate;
    private String gphoto;
    private Integer gmid;

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public Integer getGstate() {
        return gstate;
    }

    public void setGstate(Integer gstate) {
        this.gstate = gstate;
    }

    public String getGphoto() {
        return gphoto;
    }

    public void setGphoto(String gphoto) {
        this.gphoto = gphoto;
    }

    public Integer getGmid() {
        return gmid;
    }

    public void setGmid(Integer gmid) {
        this.gmid = gmid;
    }

    @Override
    public String toString() {
        return "GuangGao{" +
                "gid=" + gid +
                ", gstate=" + gstate +
                ", gphoto='" + gphoto + '\'' +
                ", gmid=" + gmid +
                '}';
    }
}
