package com.project.fitness.users.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UsersController {

	
	@RequestMapping(value="/users/loginform")
	public ModelAndView loginform(HttpServletRequest req, ModelAndView mView) {
		
		mView.setViewName("users/loginform");
		
		return mView;
	}
	
	@RequestMapping(value="/users/signupform")
	public String signupform() {
		
		return "users/signupform";
	}
	
}
