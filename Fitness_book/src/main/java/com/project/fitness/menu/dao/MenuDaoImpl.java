package com.project.fitness.menu.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fitness.manager.dto.InformationDto;

@Repository
public class MenuDaoImpl implements MenuDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public List<InformationDto> getList(InformationDto dto) {
		// TODO Auto-generated method stub
		return session.selectList("e_getList", dto);
	}

}
