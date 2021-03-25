package com.project.fitness.manager.dao;

import java.util.List;

import com.project.fitness.users.dto.UsersDto;

public interface ManagerDao {
	public List<UsersDto> getUserList();
}
