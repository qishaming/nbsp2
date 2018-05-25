package com.jk.bean;

/**
 * Created by Administrator on 2018/5/13.
 */
public class News {
    private  Integer   newsid;
    private   String   title;
    private  String content;
    private  String newsdate;
    private  String updatetime;

    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    public String getNewsdate() {
        return newsdate;
    }

    public void setNewsdate(String newsdate) {
        this.newsdate = newsdate;
    }

    public Integer getNewsid() {
        return newsid;
    }

    public void setNewsid(Integer newsid) {
        this.newsid = newsid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "News{" +
                "newsid=" + newsid +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", newsdate='" + newsdate + '\'' +
                ", updatetime='" + updatetime + '\'' +
                '}';
    }
}
