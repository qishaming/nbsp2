package com.jk.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StuDao {


    List queryStu();

    List queryOrder(@Param("orderFormState")Integer orderFormState,@Param("userid")Integer userid);

    void tuiOrder(@Param("orderFormId")Integer orderFormId,@Param("date")String date);

    void delOrder(Integer orderFormId);

    void shouOrder(@Param("orderFormId")Integer orderFormId,@Param("date")String date);
}
