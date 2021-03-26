package com.project.fitness.manager.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.fitness.manager.dto.InformationDto;
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
	public ModelAndView myPageExercise(ModelAndView mView, HttpServletRequest req) {
		
		managerService.getInfoList(mView, req);
		
		mView.setViewName("manager/private/exercise");
		
		return mView;
	}
	
	@RequestMapping(value="/manager/private/exercise_form")
	public ModelAndView myPageExerciseForm(ModelAndView mView) {
		
		mView.setViewName("manager/private/exercise_form");
		
		return mView;
	}
	
	@RequestMapping(value="/manager/private/exercise_insert")
	public ModelAndView myPageExerciseInsert(InformationDto dto, HttpSession session, ModelAndView mView) {
		
		String id = (String)session.getAttribute("id");
		
		dto.setI_writer(id);
		
		managerService.exerciseInsert(dto);
		
		mView.setViewName("redirect:/manager/private/exercise.do");
		
		return mView;
	}
	
	@RequestMapping(value="/manager/private/exercise_update")
	public ModelAndView myPageExerciseUpdate(InformationDto dto, ModelAndView mView) {
		
		managerService.exerciseUpdate(dto);
		
		mView.setViewName("redirect:/manager/private/exercise.do");
		
		return mView;
	}
	
	@RequestMapping(value="/manager/private/e_delete")
	public ModelAndView myPageExerciseDelete(int i_num, ModelAndView mView) {
		
		managerService.exerciseDelete(i_num);
		
		mView.setViewName("redirect:/manager/private/exercise.do");
		
		return mView;
	}
	
	@RequestMapping(value="/manager/private/e_updateform")
	public ModelAndView myPageExerciseUpdateForm(int i_num, ModelAndView mView) {
		
		managerService.exerciseGetData(i_num, mView);
		
		mView.setViewName("manager/private/exercise_update_form");
		
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
