package com.yash.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class EmployeeMapper implements RowMapper<Employee> {

	public Employee mapRow(ResultSet resultSet, int i) throws SQLException {

		Employee emp = new Employee();
		emp.setId(resultSet.getInt("id"));
		emp.setName(resultSet.getString("name"));
		emp.setRole(resultSet.getString("role"));
		emp.setSalary(resultSet.getDouble("salary"));
		return emp;
	}

}
