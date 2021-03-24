package com.project.fitness.users.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.project.fitness.users.dto.UsersDto;

public interface UsersService {
	public void addUser(UsersDto dto);
	public Map<String, Object> checkId(String user_id);
	public Map<String, Object> checkNick(String user_nick);
}
