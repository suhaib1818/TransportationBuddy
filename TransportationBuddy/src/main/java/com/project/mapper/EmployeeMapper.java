package com.project.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.project.models.Employee;

public class EmployeeMapper implements RowMapper<Employee> {

	Employee employeelist;

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
		employeelist = new Employee(rs.getString("name"), rs.getString("email"), rs.getString("phone"),
				rs.getString("city"), rs.getString("address"), rs.getString("age"), rs.getString("experience"),
				rs.getString("about_employee"), rs.getString("type"));
		employeelist.setId(rs.getInt("id"));
		return employeelist;
	}

}
