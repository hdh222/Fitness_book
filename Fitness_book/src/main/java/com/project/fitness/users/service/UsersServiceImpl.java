package com.project.fitness.users.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.fitness.users.dao.UsersDao;
import com.project.fitness.users.dto.UsersDto;

@Service
public class UsersServiceImpl implements UsersService{

	@Autowired
	private UsersDao usersDao;

	@Override
	public void addUser(UsersDto dto) {
		String inputPwd = dto.getUser_pwd();
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		String encodedPwd = encoder.encode(inputPwd);
		
		dto.setUser_pwd(encodedPwd);
		
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

	@Override
	public void login(HttpServletRequest req, UsersDto dto) {

		String id = dto.getUser_id();
		
		UsersDto resultDto = usersDao.getData(id);
		boolean isValid = false;
		
		if(resultDto != null) {
			String inputPwd = dto.getUser_pwd();
			isValid = BCrypt.checkpw(inputPwd, resultDto.getUser_pwd());
		}
		if(isValid) {
			req.getSession().setAttribute("id", id);
		}
	}

}
