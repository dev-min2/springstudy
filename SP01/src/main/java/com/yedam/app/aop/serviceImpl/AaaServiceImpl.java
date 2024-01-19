package com.yedam.app.aop.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yedam.app.aop.mapper.AaaMapper;
import com.yedam.app.aop.service.AaaService;

@Service
public class AaaServiceImpl implements AaaService {
	
	@Autowired
	private AaaMapper aaaMapper;
	
	@Override
	@Transactional
	public void insert() {
		// TODO Auto-generated method stub
		aaaMapper.insertAaa("101");
		aaaMapper.insertAaa("a101");
	}
	
	

}
