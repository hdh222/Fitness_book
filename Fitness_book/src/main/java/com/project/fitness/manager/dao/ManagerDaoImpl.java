package com.project.fitness.manager.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.fitness.manager.dto.InformationDto;
import com.project.fitness.users.dto.UsersDto;

@Repository
public class ManagerDaoImpl implements ManagerDao{

	@Autowired
	private SqlSession session;

	@Override
	public List<UsersDto> getUserList() {

		return session.selectList("manager.getUserList");
	}

	@Override
	public void exerciseInsert(InformationDto dto) {
		session.insert("manager.e_insert", dto);
	}

	@Override
	public List<InformationDto> getInfoList(InformationDto dto) {
		// TODO Auto-generated method stub
		return session.selectList("manager.e_getList", dto);
	}

	@Override
	public void exerciseDelete(int i_num) {

		session.delete("manager.e_delete", i_num);
	}

	@Override
	public InformationDto getExerciseData(int i_num) {
		
		return session.selectOne("manager.e_data", i_num);
	}

	@Override
	public void exerciseUpdate(InformationDto dto) {

		session.update("manager.e_update", dto);
	}
}
