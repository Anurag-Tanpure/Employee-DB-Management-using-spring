package com.empdb.models;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Department 
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	int dep_id;
	String dep_name;
	String dep_HOD;
	
	
	@OneToMany(mappedBy="department")
	List<Employee> employees;



	@Override
	public String toString() {
		return "Department [dep_id=" + dep_id + ", dep_name=" + dep_name + ", dep_HOD=" + dep_HOD +  "]";
	}



	public int getDep_id() {
		return dep_id;
	}



	public void setDep_id(int dep_id) {
		this.dep_id = dep_id;
	}



	public String getDep_name() {
		return dep_name;
	}



	public void setDep_name(String dep_name) {
		this.dep_name = dep_name;
	}



	public String getDep_HOD() {
		return dep_HOD;
	}



	public void setDep_HOD(String dep_HOD) {
		this.dep_HOD = dep_HOD;
	}



	public List<Employee> getEmployees() {
		return employees;
	}



	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}
	
	
	
}
