package com.project.control;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.entity.StudentInfo;
import com.project.service.StudentInfoService;

@Controller
public class StudentInfoController {
	
	@Autowired
	private StudentInfoService service1;
	
	@RequestMapping("/")
	public String indexPage(Model model) {
		return "index";
	}
	
	@RequestMapping("/studentinfo")
	public String studentInfo(Model model) {
		List<StudentInfo> list=this.service1.studentinfoAll();
		model.addAttribute("studentlist", list);
		return "student-info";
	}
	
	@RequestMapping("/studentform")
	public String studentForm(Model model) {
		model.addAttribute("studentmodel", new StudentInfo());
		 List<String> list1=Arrays.asList("Java","Spring Boot","Spring MVC","JSP","JSF","Thymeleaf",
				  "Angular","Javascript","jQuery","Bootstrap 4","HTML5","CSS3");
		  model.addAttribute("listProg", list1);
		return "student-form";
	}
	
	@RequestMapping("/studentSave")
	public String studentSave(@ModelAttribute("studentmodel") StudentInfo student) {
		if(student.getId()!=null) {
			this.service1.studentUpdate(student);
		}else {
			this.service1.studentSave(student);
		}
		return "redirect:/studentinfo";
	}
	
	@RequestMapping("/delete")
	public String studentDelete(@RequestParam("id") Integer id) {
		this.service1.studentDelete(id);
		
		return "redirect:/studentinfo";
	}
	
	@RequestMapping("/update")
	public String studentUpdate(@RequestParam("id") Integer id,Model model) {
		StudentInfo student=this.service1.studentFindById(id);
		model.addAttribute("studentmodel", student);
		List<String> list1=Arrays.asList("Java","Spring Boot","Spring MVC","JSP","JSF","Thymeleaf",
				  "Angular","Javascript","jQuery","Bootstrap 4","HTML5","CSS3");
		  model.addAttribute("listProg", list1);
		return "student-form";
	}

}
