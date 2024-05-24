package com.yash.crud;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yash.DAO.EmpDAO;
import com.yash.model.Employee;

@Controller
public class Main {
	@Autowired
	EmpDAO dao;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showEmployeeTable(Model model) {
		List<Employee> employees = dao.getAllEmployees();
		for (Employee e : employees) {
			System.out.println(e.getName());
		}
		model.addAttribute("employees", employees);
		return "Main";
	}

	@RequestMapping(value = "addemp", method = RequestMethod.GET)
	public String showAddEmployeeForm() {
		// System.out.println(id + " " + name);
		return "AddEmp";
	}

	@RequestMapping(value = "saveEmployee", method = RequestMethod.POST)
	public String saveEmployee(Employee employee, Model model) {
		dao.createEmployee(employee);
		return "redirect:/";
	}

	@RequestMapping(value = "deleteEmployee", method = RequestMethod.POST)
	public String deleteEmployee(Employee employee) {
		dao.deleteEmployee(employee);
		return "redirect:/";
	}
}
