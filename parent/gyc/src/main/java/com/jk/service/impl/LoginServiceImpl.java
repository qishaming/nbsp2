package com.jk.service.impl;

import com.jk.bean.BigType;
import com.jk.bean.Goods;
import com.jk.bean.SmallType;
import com.jk.bean.User;
import com.jk.dao.LoginDao;
import com.jk.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginDao loginDao;

    @Override
    public List queryStu() {
        return loginDao.queryStu();
    }

    @Override
    public String loginUser(User user, HttpServletRequest request) {
        User  users = loginDao.loginUser(user);
        if(users!=null){
            request.getSession().setAttribute("user", users);
            return "loginSuccsee";
        }
        return "loginFail";
    }

    @Override
    public List<BigType> queryDaXiao() {
        return loginDao.queryDaXiao();
    }

    @Override
    public List<SmallType> queryXiao(Integer bid) {
        return loginDao.queryXiao(bid);
    }

    @Override
    public List<Goods> queryGoods(Integer id) {

        return loginDao.queryGoods(id);
    }

    @Override
    public List<Goods> queryGoodsInfo(Integer id) {
        return loginDao.queryGoodsInfo(id);
    }

}
