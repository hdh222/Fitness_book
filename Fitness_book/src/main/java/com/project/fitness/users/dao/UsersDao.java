package com.project.fitness.users.dao;

import com.project.fitness.users.dto.UsersDto;

public interface UsersDao {
	public void addUser(UsersDto dto);
	public boolean checkid(String user_id);
	public boolean checkNick(String user_nick);
	public UsersDto getData(String id);
}
