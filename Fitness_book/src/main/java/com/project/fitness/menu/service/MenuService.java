package com.project.fitness.menu.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.project.fitness.manager.dto.InformationDto;

public interface MenuService {
	public void getList(ModelAndView mView, InformationDto dto);
}
