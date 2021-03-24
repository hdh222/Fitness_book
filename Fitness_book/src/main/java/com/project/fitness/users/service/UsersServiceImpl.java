package com.project.fitness.users.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.fitness.users.dao.UsersDao;

@Service
public class UsersServiceImpl implements UsersService{

	@Autowired
	private UsersDao usersDao;
	
}
