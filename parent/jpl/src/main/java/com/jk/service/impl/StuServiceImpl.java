package com.jk.service.impl;


import com.jk.dao.StuDao;
import com.jk.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class StuServiceImpl implements StuService {

	@Autowired
	private StuDao stuDao;


	@Override
	public List queryStu() {

		return stuDao.queryStu();
	}

	@Override
	public List queryOrder(Integer orderFormState,Integer userid) {
		return stuDao.queryOrder(orderFormState,userid);
	}

	@Override
	public void updateshouOrder(Integer orderFormId) {
		Date d = new Date();
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String date= sim.format(d);
		stuDao.shouOrder(orderFormId,date);
	}

	@Override
	public void delOrder(Integer orderFormId) {
		stuDao.delOrder(orderFormId);
	}

	@Override
	public void updatetuiOrder(Integer orderFormId) {
		Date d = new Date();
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String date= sim.format(d);
		stuDao.tuiOrder(orderFormId,date);
	}
}
