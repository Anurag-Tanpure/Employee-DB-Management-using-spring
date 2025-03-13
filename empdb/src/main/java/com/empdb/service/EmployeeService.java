package com.empdb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.empdb.dao.EmployeeDao;
import com.empdb.models.Employee;

import net.bytebuddy.asm.Advice.Return;

@Service
public class EmployeeService {

	@Autowired
	EmployeeDao ed;
	
	public int saveuser(Employee e)
	{
		return this.ed.save(e);
	}
	
	public List<Employee> getAllEmp()
	{
		return ed.getAllEmployee();
	}
	
	public Employee getEmployeeById(int eid)
	{
		return ed.getEmployeeById(eid);
	}

	public void updateEmployee(Employee e)
	{
		this.ed.updateEmployee(e);
	}
	
	public void deleteEmployee(Employee e)
	{
	   this.ed.deleteEmployee(e);	
	}
	
	public List<Employee> getEmployeebyName(String name)
	{
		return this.ed.getEmployeeByname(name);
	}
	public List<Employee> getEmployeeByFirstChar(String ch)
	{
		return this.ed.getEmployeeByFirstChar(ch);
	}

}
