package com.project.fitness.users.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.fitness.users.dto.UsersDto;
import com.project.fitness.users.service.UsersService;

@Controller
public class UsersController {

	@Autowired
	private UsersService usersService;
	
	@RequestMapping(value="/users/loginform")
	public ModelAndView loginform(HttpServletRequest req, ModelAndView mView) {
		
		mView.setViewName("users/loginform");
		
		return mView;
	}
	
	@RequestMapping(value="/users/signupform")
	public String signupform() {
		
		return "users/signupform";
	}
	
	@RequestMapping(value="/users/signup")
	public ModelAndView signup(ModelAndView mView, UsersDto dto) {
		
		usersService.addUser(dto);
		
		mView.setViewName("users/signup");
		
		return mView;
		
	}
	
	@RequestMapping(value="/users/checkid", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> checkid(String user_id){
		
		return usersService.checkId(user_id);
	}
	
	@RequestMapping(value="/users/checknick", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> checkNick(String user_nick){
		
		return usersService.checkNick(user_nick);
	}
	
}
