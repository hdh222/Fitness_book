package com.project.fitness.manager.dao;

import java.util.List;

import com.project.fitness.manager.dto.InformationDto;
import com.project.fitness.users.dto.UsersDto;

public interface ManagerDao {
	public List<UsersDto> getUserList();
	public void exerciseInsert(InformationDto dto);
	public void exerciseUpdate(InformationDto dto);
	public List<InformationDto> getInfoList(InformationDto dto);
	public void exerciseDelete(int i_num);
	public InformationDto getExerciseData(int i_num);
}
