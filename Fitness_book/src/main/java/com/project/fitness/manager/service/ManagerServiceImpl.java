package com.project.fitness.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.fitness.manager.dao.ManagerDao;
import com.project.fitness.users.dto.UsersDto;

@Service
public class ManagerServiceImpl implements ManagerService{

	@Autowired
	private ManagerDao managerDao;

	@Override
	public void getUserList(ModelAndView mView) {
		// TODO Auto-generated method stub
		
		List<UsersDto> list = managerDao.getUserList();
		
		mView.addObject("list", list);
	}

	
}
