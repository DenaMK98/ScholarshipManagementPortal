package com.example.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.stereotype.Service;

import com.example.dao.AdminLoginInfo;
import com.example.dao.ScholarshipApplication;
import com.example.dao.ScholarshipStatus;
import com.example.dao.StudentLoginInfo;

@Service
public class ServiceClass {

	@Autowired
	JdbcTemplate jdbc;

	public void createStudent(StudentLoginInfo sd) {
		PreparedStatementCreator obj = new PreparedStatementCreator() {

			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement sql = con.prepareStatement("insert into studentLoginInfo values (?,?,?) ");
				sql.setString(1, sd.getStudentName());
				sql.setString(2, sd.getStudentEmailId());
				sql.setString(3, sd.getStudentPassword());
				return sql;
			}
		};
		jdbc.update(obj);
	}

	public void createAdmin(AdminLoginInfo ad) {
		PreparedStatementCreator obj = new PreparedStatementCreator() {

			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement sql = con.prepareStatement("insert into adminLoginInfo values (?,?,?) ");
				sql.setString(1, ad.getAdminName());
				sql.setString(2, ad.getAdminEmailId());
				sql.setString(3, ad.getAdminPassword());
				return sql;
			}
		};
		jdbc.update(obj);
	}

	public void applyScholarship(ScholarshipApplication sa) {
		PreparedStatementCreator obj = new PreparedStatementCreator() {

			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement sql = con
						.prepareStatement("insert into scholarshipDetails values (?,?,?,?,?,?,?,?,?,?) ");
				sql.setString(1, sa.getFirst_name());
				System.out.println(sa.getFirst_name());
				sql.setString(2, sa.getLast_name());
				sql.setString(3, sa.getAddress());
				sql.setString(4, sa.getPhoneNo());
				sql.setString(5, sa.getEmailId());
				sql.setString(6, sa.getStream());
				sql.setFloat(7, sa.getSsc());
				sql.setFloat(8, sa.getHsc());
				sql.setFloat(9, sa.getCutoff());
				sql.setString(10, sa.getCollege());
				return sql;
			}
		};
		jdbc.update(obj);

	}

	public List<ScholarshipApplication> AdminPage() {
		String sql = "select * from scholarshipDetails;";
		List<ScholarshipApplication> sa = jdbc.query(sql,
				BeanPropertyRowMapper.newInstance(ScholarshipApplication.class));
		return sa;
	}

	public void setStatus(ScholarshipStatus ss) {
		PreparedStatementCreator obj = new PreparedStatementCreator() {

			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement sql = con
						.prepareStatement("insert into scholarshipStatus values (?,?,?,?,?,?,?,?,?,?) ");
				sql.setString(1, ss.getFirst_name());
				sql.setString(2, ss.getEmailId());
				sql.setString(3, ss.getAddress());
				sql.setString(4, ss.getContact());
				sql.setFloat(5, ss.getSsc());
				sql.setFloat(6, ss.getHsc());
				sql.setString(7, ss.getStream());
				sql.setString(8, ss.getCollege());
				sql.setFloat(9, ss.getCutoff());
				sql.setString(10, ss.getStatus());
				return sql;
			}
		};
		jdbc.update(obj);

	}

	public ScholarshipStatus getStudentStatus(String email) {
		// TODO Auto-generated method stub
		String sql="select * from ScholarshipStatus where emailID='"+email+"';";
		ScholarshipStatus ss = jdbc.queryForObject(sql, BeanPropertyRowMapper.newInstance(ScholarshipStatus.class));
		return ss;
	}
}
