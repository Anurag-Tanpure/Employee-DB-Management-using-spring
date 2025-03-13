package com.empdb.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.empdb.models.Employee;

@Repository
public class EmployeeDao {
	@Autowired
	HibernateTemplate hibernatetemplate;

	@Transactional
	public int save(Employee e)
	{
       return (int)	 this.hibernatetemplate.save(e);
	}
	
	public List<Employee> getAllEmployee()
	{
		return this.hibernatetemplate.loadAll(Employee.class);
	}
	
	public Employee getEmployeeById(int eid)
	{
		return this.hibernatetemplate.get(Employee.class,eid);
	}
	
	@Transactional
	public void updateEmployee(Employee e)
	{
		this.hibernatetemplate.update(e);
	}

	@Transactional
	public void deleteEmployee(Employee e)
	{
	   this.hibernatetemplate.delete(e);	
	}

	
	public List<Employee> getEmployeeByname(String name)
	{
		Criteria c = this.hibernatetemplate.getSessionFactory().openSession().createCriteria(Employee.class);
		
		c.add(Restrictions.eq("name", name));
		
		List<Employee> l = c.list();
		return l;
	}

	public List<Employee> getEmployeeByFirstChar(String ch)
	{
		
		Criteria c = this.hibernatetemplate.getSessionFactory().openSession().createCriteria(Employee.class);
		
		c.add(Restrictions.like("name", ch+"%"));
		List<Employee> l = c.list();
		return l;
	}
	
}
