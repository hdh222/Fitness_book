package com.project.fitness.manager.dto;

public class InformationDto {
	private int i_num;
	private String i_writer;
	private String i_category;
	private String i_title;
	private String i_content;
	
	public InformationDto() {}

	public InformationDto(int i_num, String i_writer, String i_category, String i_title, String i_content) {
		super();
		this.i_num = i_num;
		this.i_writer = i_writer;
		this.i_category = i_category;
		this.i_title = i_title;
		this.i_content = i_content;
	}

	public int getI_num() {
		return i_num;
	}

	public void setI_num(int i_num) {
		this.i_num = i_num;
	}

	public String getI_writer() {
		return i_writer;
	}

	public void setI_writer(String i_writer) {
		this.i_writer = i_writer;
	}

	public String getI_category() {
		return i_category;
	}

	public void setI_category(String i_category) {
		this.i_category = i_category;
	}

	public String getI_title() {
		return i_title;
	}

	public void setI_title(String i_title) {
		this.i_title = i_title;
	}

	public String getI_content() {
		return i_content;
	}

	public void setI_content(String i_content) {
		this.i_content = i_content;
	}
	
}
