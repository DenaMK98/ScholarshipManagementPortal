package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dao.AdminLoginInfo;
import com.example.dao.ScholarshipApplication;
import com.example.dao.ScholarshipStatus;
import com.example.dao.StudentLoginInfo;
import com.example.service.ServiceClass;

@Controller
public class ControllerClass {

	@Autowired
	JdbcTemplate jdbc;

	@Autowired
	ServiceClass sc;

	@GetMapping("/")
	public String navigateToLogin() {
		return "loginPage";
	}

	@GetMapping("/adminRegisterRequest")
	public String adminRegisterRequest() {
		return "adminRegisterPage";
	}

	@GetMapping("/studentRegisterRequest")
	public String studentRegisterRequest() {
		return "studentRegisterPage";
	}

	@PostMapping("/adminLoginInto")
	public String adminLoginInto(@RequestParam("adminEmailId") String email,
			@RequestParam("adminPassword") String password, ModelMap map) {
		String sql = "select * from adminLoginInfo where adminEmailId='" + email + "';";
		AdminLoginInfo ad = jdbc.queryForObject(sql, BeanPropertyRowMapper.newInstance(AdminLoginInfo.class));
		if (ad.getAdminPassword().equalsIgnoreCase(password)) {
			List<ScholarshipApplication> sa = sc.AdminPage();
			map.addAttribute("sa", sa);
			return "AdminPage";
		} else {
			return "invalidLoginDetails";
		}
	}

	@PostMapping("/studentLoginInto")
	public String studentLoginInto(@RequestParam("studentEmailId") String email,
			@RequestParam("studentPassword") String password, ModelMap map) {
		String sql = "select * from studentLoginInfo where studentEmailId='" + email + "';";
		StudentLoginInfo sd = jdbc.queryForObject(sql, BeanPropertyRowMapper.newInstance(StudentLoginInfo.class));
		if (sd.getStudentPassword().equalsIgnoreCase(password)) {
			return "StudentPage";
		} else {
			return "invalidLoginDetails";
		}
	}

	@PostMapping("/adminRegister")
	public String adminRegister(@ModelAttribute("admin") AdminLoginInfo ad) {
		sc.createAdmin(ad);
		return "loginPage";

	}

	@PostMapping("/studentRegister")
	public String studentRegister(@ModelAttribute("student") StudentLoginInfo sd) {
		sc.createStudent(sd);
		return "loginPage";

	}

	@PostMapping("/applyscholarship")
	public String applyScholarship(@ModelAttribute("scholarship") ScholarshipApplication sa) {
		sc.applyScholarship(sa);
		return "success";
	}

	@PostMapping("/setStatus")
	public String setStatus(@ModelAttribute("setStatus") ScholarshipStatus ss, ModelMap map) {
		sc.setStatus(ss);
		List<ScholarshipApplication> sa = sc.AdminPage();
		map.addAttribute("sa", sa);
		return "AdminPage";
	}
	
	@GetMapping("/checkStatus")
	public String StudentStatus() {
		return "verifyEmailId";

	}

	@GetMapping("/checkStatusAction")
	public String statusAction(@RequestParam("EmailId") String email, ModelMap map) {
		System.out.println(email);
		ScholarshipStatus ss = sc.getStudentStatus(email);
		map.addAttribute("ss", ss);
		return "status";
	}


}
