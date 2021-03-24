package com.project.fitness.users.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fitness.users.dto.UsersDto;

@Repository
public class UsersDaoImpl implements UsersDao{

	@Autowired
	private SqlSession session;

	@Override
	public void addUser(UsersDto dto) {
		session.insert("users.insert", dto);
	}

	@Override
	public boolean checkid(String user_id) {
		String id = session.selectOne("users.checkid", user_id);

		if(id == null) {
			return false;
		}else {
			return true;
		}
	}

	@Override
	public boolean checkNick(String user_nick) {
		String nick = session.selectOne("users.checkNick", user_nick);
		
		if(nick == null) {
			return false;
		}else {
			return true;
		}
	}

	@Override
	public UsersDto getData(String id) {
		
		return session.selectOne("users.getData", id);
	}

}
