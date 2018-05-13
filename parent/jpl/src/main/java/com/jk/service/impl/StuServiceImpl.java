package com.jk.service.impl;


import com.jk.dao.StuDao;
import com.jk.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StuServiceImpl implements StuService {

	@Autowired
	private StuDao stuDao;


	@Override
	public List queryStu() {

		return stuDao.queryStu();
	}
}
