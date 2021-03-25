package com.project.fitness.manager.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.fitness.manager.service.ManagerService;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService managerService;

	@RequestMapping(value="/manager/private/logout")
	public ModelAndView logout(HttpServletRequest req, ModelAndView mView) {
		
		req.getSession().invalidate();
		
		mView.setViewName("manager/private/logout");
		
		return mView;
	}
	
	@RequestMapping(value="/manager/private/member")
	public ModelAndView myPageMember(ModelAndView mView) {
		
		managerService.getUserList(mView);
		
		mView.setViewName("manager/private/member");
		
		return mView;
	}
	
	@RequestMapping(value="/manager/private/exercise")
	public ModelAndView myPageExercise(ModelAndView mView) {
		
		mView.setViewName("manager/private/exercise");
		
		return mView;
	}
	@RequestMapping(value="/manager/private/event")
	public ModelAndView myPageEvent(ModelAndView mView) {
		
		mView.setViewName("manager/private/event");
		
		return mView;
	}
	@RequestMapping(value="/manager/private/inquiry")
	public ModelAndView myPageInquiry(ModelAndView mView) {
		
		mView.setViewName("manager/private/inquiry");
		
		return mView;
	}
	
}
