package com.project.fitness.users.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.fitness.users.dao.UsersDao;
import com.project.fitness.users.dto.UsersDto;

@Service
public class UsersServiceImpl implements UsersService{

	@Autowired
	private UsersDao usersDao;

	@Override
	public void addUser(UsersDto dto) {
		usersDao.addUser(dto);
	}

	@Override
	public Map<String, Object> checkId(String user_id) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		boolean isExist = usersDao.checkid(user_id);
		
		map.put("isExist", isExist);
		
		return map;
	}

	@Override
	public Map<String, Object> checkNick(String user_nick) {
		
		boolean isExist = usersDao.checkNick(user_nick);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("isExist", isExist);
		
		return map;
	}

	
	
}
