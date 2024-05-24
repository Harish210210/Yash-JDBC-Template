package com.yash.DAO;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.yash.model.Employee;
import com.yash.model.EmployeeMapper;

@Service
public class EmpDAOImpl implements EmpDAO {

	JdbcTemplate jdbcTemplate;

	private final String SQL_FIND_EMPLOYEE = "select * from yashbabuemp where id = ?";
	private final String SQL_DELETE_EMPLOYEE = "delete from yashbabuemp where id = ?";
	private final String SQL_UPDATE_EMPLOYEE = "update yashbabuemp set name = ?, role = ?, salary  = ? where id = ?";
	private final String SQL_GET_ALL = "select * from yashbabuemp";
	private final String SQL_INSERT_EMPLOYEE = "insert into yashbabuemp(id, name,role, salary) values(?,?,?,?)";

	@Autowired
	public EmpDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public Employee getEmployeeByNo(Integer eno) {
		return jdbcTemplate.queryForObject(SQL_FIND_EMPLOYEE, new Object[] { eno }, new EmployeeMapper());
	}

	public List<Employee> getAllEmployees() {
		return jdbcTemplate.query(SQL_GET_ALL, new EmployeeMapper());
	}

	public boolean deleteEmployee(Employee e) {
		return jdbcTemplate.update(SQL_DELETE_EMPLOYEE, e.getId()) > 0;
	}

	public boolean updateEmployee(Employee e) {
		return jdbcTemplate.update(SQL_UPDATE_EMPLOYEE, e.getName(), e.getRole(), e.getSalary(), e.getId()) > 0;
	}

	public boolean createEmployee(Employee e) {
		// System.out.println("id" + e.getId());
		return jdbcTemplate.update(SQL_INSERT_EMPLOYEE, e.getId(), e.getName(), e.getRole(), e.getSalary()) > 0;
	}

}
