package com.jk.service;

import java.util.List;

public interface StuService {


    List queryStu();

    List queryOrder(Integer orderFormState,Integer userid);

    void updateshouOrder(Integer orderFormId);

    void delOrder(Integer orderFormId);

    void updatetuiOrder(Integer orderFormId);
}
