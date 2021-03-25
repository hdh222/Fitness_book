package com.project.fitness.manager.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fitness.users.dto.UsersDto;

@Repository
public class ManagerDaoImpl implements ManagerDao{

	@Autowired
	private SqlSession session;

	@Override
	public List<UsersDto> getUserList() {

		return session.selectList("manager.getUserList");
	}
}
