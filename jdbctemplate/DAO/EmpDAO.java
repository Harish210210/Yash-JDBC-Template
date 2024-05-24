package com.yash.DAO;

import java.util.List;

import com.yash.model.Employee;

public interface EmpDAO {
	Employee getEmployeeByNo(Integer eno);

	List<Employee> getAllEmployees();

	boolean deleteEmployee(Employee e);

	boolean updateEmployee(Employee e);

	boolean createEmployee(Employee e);
}
