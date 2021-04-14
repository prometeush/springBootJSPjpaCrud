package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.StudentInfoRepository;
import com.project.entity.StudentInfo;

@Service
public class StudentInfoService {
	
	@Autowired
	private StudentInfoRepository repository;
	
	public List<StudentInfo> studentinfoAll(){
		List<StudentInfo> list=this.repository.findAll();
		return list;
	}
	
	public void studentSave(StudentInfo student) {
		this.repository.save(student);
	}
	
	public void studentDelete(Integer id) {
		this.repository.deleteById(id);
	}
	public void studentUpdate(StudentInfo student) {
		this.repository.save(student);
	}
	
	public StudentInfo studentFindById(Integer id) {
		StudentInfo student=this.repository.findById(id).get();
		return student;
	}
	
	public List<StudentInfo> listSearchAll(String keyword){
		return  this.repository.studentSearch(keyword);
	}

}
