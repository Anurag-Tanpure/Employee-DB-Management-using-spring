package com.empdb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.empdb.dao.DepartmentDao;
import com.empdb.models.Department;

@Service
public class DepartmentService {

	@Autowired
	DepartmentDao dd;
	
	public int save(Department d)
	{
		return (int) this.dd.savedep(d);
	}
	
	public List<Department> getAllDepartment()
	{
		return this.dd.getAllDepartment();
	}
	
	public Department getDepartment(int id)
	{
		return this.dd.getDepartmentById(id);
	}
	
	public void updateDepartment(Department d)
	{
		this.dd.updateDep(d);
	}
}
