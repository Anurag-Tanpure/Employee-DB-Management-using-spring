package com.empdb.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.empdb.models.Department;
import com.empdb.models.Employee;
import com.empdb.service.DepartmentService;
import com.empdb.service.EmployeeService;

@Controller
@RequestMapping("/Employee")
public class EmployeeController {

	@Autowired
	EmployeeService es;

	@Autowired
	DepartmentService ds;

	
	
	
	// ***************************************************************************************************//
	// Employee Insert module open

	@RequestMapping("/InsertEmp")
	public ModelAndView insertEmp1(ModelAndView m) {
		List<Department> l = ds.getAllDepartment();
		m.addObject("list", l);
		m.setViewName("InsertEmp");

		return m;
	}

	@RequestMapping("/EmpInsert")
	public String insertEmp2(@ModelAttribute("Employee") Employee e, @RequestParam("dep_id") int dep_id, Model m) {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Department d = ds.getDepartment(dep_id);
		e.setDepartment(d);
		String formattedDob = sdf.format(e.getDob());
		String formattedJoinDate = sdf.format(e.getJoinDate());

		if (es.saveuser(e) > 0) {
			m.addAttribute("msg", "Employee Inserted Succesfully");
			return "success";
		} else {
			m.addAttribute("msg", "Employee Not Inserted");
			return "Error";
		}

	}

	// Employee Insert module closed
	// ***************************************************************************************************//

	
	
	
	
	// ***************************************************************************************************//
	// GetAll Employee module open

	@RequestMapping("/DisplayAllEmp")
	public ModelAndView displayAllemp(ModelAndView m) {
		List<Employee> l = es.getAllEmp();
		m.addObject("list", l);
		m.setViewName("DisplayAllEmp");
		return m;
	}

	// GetAll Employee module close
	// ***************************************************************************************************//

	
	
	
	
	// ***************************************************************************************************//
	// Search Employee By Id module open

	@RequestMapping("/SearchEmp")
	public String searchEmployeeById1() {
		return "SearchEmp";
	}

	@RequestMapping("/SearchEmployee")
	public ModelAndView searchEmployeeById2(ModelAndView m, @RequestParam("eid") int eid) {

		System.out.println(eid);
		m.addObject("eid", eid + "");

		Employee e = es.getEmployeeById(eid);
		System.out.println(e);
		m.addObject("Employee", e);
		m.setViewName("SearchEmp");

		return m;
	}
	// Search Employee By Id module close
	// ***************************************************************************************************//

	
	
	
	// ***************************************************************************************************//
	// Employee Update module open

	@RequestMapping("/UpdateEmp")
	public String employeeUpdate1() {
		return "UpdateEmp";
	}

	@RequestMapping("/GetEmployee")
	public ModelAndView getEmpIdforupdate(ModelAndView m, @RequestParam("eid") int eid) {
		Employee e = es.getEmployeeById(eid);
		List<Department> l = ds.getAllDepartment();

		m.addObject("eid", eid + "");
		m.addObject("list", l);
		m.addObject("employee", e);
		m.setViewName("UpdateEmp");

		return m;
	}

	@RequestMapping("/EmpUpdate")
	public String employeeUpdate2(@ModelAttribute("Employee") Employee e, @RequestParam("dep_id") int dep_id, Model m) {
		try {
			Department d = ds.getDepartment(dep_id);
			e.setDepartment(d);
			es.updateEmployee(e);
			m.addAttribute("msg", "Employee updated successfully!");
			return "success";
		} catch (Exception ex) {
			m.addAttribute("msg", "Error updating employee: " + ex.getMessage());
			return "error";
		}
	}
	// Employee Udpate module close
	// ***************************************************************************************************//

	
	
	
	// ***************************************************************************************************//
	// Employee Delete module open

	@RequestMapping("/deleteEmp")
	public String employeeDelete() {
		return "deleteEmp";
	}

	@RequestMapping("/deleteEmployee")
	public ModelAndView getEmployeeforDelete(ModelAndView m, @RequestParam("eid") int eid) {
		Employee e = es.getEmployeeById(eid);

		m.addObject("eid", e + "");
		m.addObject("employee", e);
		m.setViewName("deleteEmp");
		return m;
	}

	@RequestMapping("/EmpDelete")
	public String employeeDelete2(@ModelAttribute("Employee") Employee e, Model m) {
		try {
			es.deleteEmployee(e);
			m.addAttribute("msg", "Employee deleted successfully!");
			return "success";
		} catch (Exception ex) {
			m.addAttribute("msg", "Error deleting employee: " + ex.getMessage());
			return "error";
		}
	}
	// Employee Delete module close

	// ***************************************************************************************************//

	
	
	
	
	// ***************************************************************************************************//
	// Search Employee by name module open

	@RequestMapping("/SearchEmpByName")
	public String serachEmployeeByName1() {
		return "SearchEmpByName";
	}

	@RequestMapping("/SearchEmployeeByName")
	public ModelAndView serachEmployeeByName2(ModelAndView m, @RequestParam("name") String name) {
		System.out.println("we are here");
		List<Employee> l = es.getEmployeebyName(name);

		m.addObject("name", name);
		m.addObject("list", l);
		m.setViewName("SearchEmpByName");

		return m;
	}

	// Search Employee by name module close
	// ***************************************************************************************************//

	
	
	
	// ***************************************************************************************************//
	// Search Employee by first char module open

	@RequestMapping("/SearchEmpByFirstChar")
	public String serachEmployeeByFirstchar1() {
		return "SearchEmpByFirstChar";
	}

	@RequestMapping("/SearchEmployeeByFirstChar")
	public ModelAndView serachEmployeeByFirstchar2(ModelAndView m, @RequestParam("ch") String name) {
		List<Employee> l = es.getEmployeeByFirstChar(name);

		m.addObject("name", name);
		m.addObject("list", l);
		m.setViewName("SearchEmpByFirstChar");

		return m;
	}

	// Search Employee by first char module close
	// ***************************************************************************************************//

}
