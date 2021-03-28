package com.project.fitness.manager.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.fitness.manager.dao.ManagerDao;
import com.project.fitness.manager.dto.InformationDto;
import com.project.fitness.users.dto.UsersDto;

@Service
public class ManagerServiceImpl implements ManagerService{

	@Autowired
	private ManagerDao managerDao;

	@Override
	public void getUserList(ModelAndView mView) {
		
		List<UsersDto> list = managerDao.getUserList();
		
		mView.addObject("list", list);
	}

	@Override
	public void exerciseInsert(InformationDto dto) {
		
		managerDao.exerciseInsert(dto);
		
	}

	@Override
	public void getInfoList(ModelAndView mView, HttpServletRequest req) {

		InformationDto dto = new InformationDto();
		
		String category = req.getParameter("search_option");
		String keyword = req.getParameter("keyword");
		
		if(keyword == null) {
			category = "";
			keyword = "";
		}
		
		if(!keyword.equals("")) {
			if(category.equals("title_category")) {
				dto.setI_title(keyword);
				dto.setI_category(keyword);
			}else if(category.equals("title")) {
				dto.setI_title(keyword);
			}else if(category.equals("category")) {
				dto.setI_category(keyword);
			}
		}
		
		List<InformationDto> list = managerDao.getInfoList(dto);
		
		mView.addObject("list", list);
		
	}

	@Override
	public void exerciseDelete(int i_num) {

		managerDao.exerciseDelete(i_num);
	}

	@Override
	public void exerciseGetData(int i_num, ModelAndView mView) {

		InformationDto dto = managerDao.getExerciseData(i_num);
		
		dto.setI_num(i_num);
		
		mView.addObject("data", dto);
	}

	@Override
	public void exerciseUpdate(InformationDto dto) {

		managerDao.exerciseUpdate(dto);
	}

	@Override
	public void exerciseDetail(int i_num, ModelAndView mView) {
		
		InformationDto dto = managerDao.getExerciseData(i_num);
		
		dto.setI_num(i_num);
		
		mView.addObject("data", dto);
		
	}

	

	
}
