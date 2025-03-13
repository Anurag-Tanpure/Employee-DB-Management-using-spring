package com.empdb.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.empdb.models.Department;

@Repository
public class DepartmentDao {

	@Autowired
	HibernateTemplate hibernatetemplate;
	
	@Transactional
	public int savedep(Department d)
	{
		return  (int) this.hibernatetemplate.save(d);
	}
	
	public List<Department> getAllDepartment()
	{
		List<Department> l = this.hibernatetemplate.loadAll(Department.class);
		return l;
	}
	
	public Department getDepartmentById(int id) {
	    return this.hibernatetemplate.get(Department.class, id);
	}
	
	@Transactional
	public void updateDep(Department d)
	{
		this.hibernatetemplate.update(d);
	}
}

