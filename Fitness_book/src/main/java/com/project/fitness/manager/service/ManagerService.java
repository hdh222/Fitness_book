package com.project.fitness.manager.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.project.fitness.manager.dto.InformationDto;

public interface ManagerService {
	public void getUserList(ModelAndView mView);
	public void exerciseInsert(InformationDto dto);
	public void exerciseUpdate(InformationDto dto);
	public void getInfoList(ModelAndView mView, HttpServletRequest req);
	public void exerciseDelete(int i_num);
	public void exerciseGetData(int i_num, ModelAndView mView);
	public void exerciseDetail(int i_num, ModelAndView mView);
}
