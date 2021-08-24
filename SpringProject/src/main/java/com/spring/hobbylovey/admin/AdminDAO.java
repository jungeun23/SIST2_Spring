package com.spring.hobbylovey.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {
	private Connection conn;
	private PreparedStatement pstat;
	private ResultSet rs;
	

}
