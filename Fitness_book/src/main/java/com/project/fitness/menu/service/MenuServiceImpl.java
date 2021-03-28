package com.project.fitness.menu.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.fitness.manager.dto.InformationDto;
import com.project.fitness.menu.dao.MenuDao;

@Service
public class MenuServiceImpl implements MenuService{

	@Autowired
	private MenuDao menuDao;
	
	@Override
	public void getList(ModelAndView mView, InformationDto dto) {
		
		
		List<InformationDto> list = menuDao.getList(dto);
		
		mView.addObject("list", list);
	}

}
