package com.empdb.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.empdb.models.Department;
import com.empdb.models.Employee;
import com.empdb.service.DepartmentService;
import com.empdb.service.EmployeeService;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {

		return "Home";
	}

	@RequestMapping("/success")
	public String success()
	{
		return "success";
	}
	
    @GetMapping("/error")
    public String error() {
        return "Error";  
    }
    
}
