package com.project.fitness.menu.dao;

import java.util.List;

import com.project.fitness.manager.dto.InformationDto;

public interface MenuDao {
	public List<InformationDto> getList(InformationDto dto);

}
