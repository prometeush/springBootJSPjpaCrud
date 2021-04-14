package com.project.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.entity.StudentInfo;

public interface StudentInfoRepository extends JpaRepository<StudentInfo, Integer>{
	
	@Query(value="select s from StudentInfo s where s.vorname like '%' || :keyword || '%'"
			+ "or s.nachname like '%' || :keyword || '%'"
			+ "or s.email like '%' || :keyword || '%'")
	public List<StudentInfo> studentSearch(String keyword);

}
