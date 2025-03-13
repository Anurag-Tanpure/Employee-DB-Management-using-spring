package empdb;

import java.util.ArrayList;
import java.util.List;

import com.empdb.models.Department;
import com.empdb.models.Employee;
import com.empdb.service.DepartmentService;

public class Test {

	
	public static void main(String[] args) {
		
	   DepartmentService ds = new DepartmentService();
	   
	   Department d1 = new Department();
	   Department d2 = new Department();
	   Department d3 = new Department();
	   
	   List<Employee> l = new ArrayList<>();
	   
	   d1.setDep_name("HR");
	   d1.setDep_HOD("Manish");
	   d1.setEmployees(l);
	   
	   d2.setDep_name("IT");
	   d2.setDep_HOD("Akash");
	   d2.setEmployees(l);
	   
	   d3.setDep_name("Sales");
	   d3.setDep_HOD("chetan");
	   d3.setEmployees(l);
	
	   System.out.println("work done");
	}
}
