package com.project.fitness.menu.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.fitness.manager.dto.InformationDto;
import com.project.fitness.menu.service.MenuService;

@Controller
public class MenuController {
	
	@Autowired
	private MenuService menuService;
	
	@RequestMapping(value="/menu/e_list.do")
	public ModelAndView ExerciseMenu(ModelAndView mView, InformationDto dto) {
		
		menuService.getList(mView, dto);
		
		mView.setViewName("menu/e_list");
		
		return mView;
	}

}
