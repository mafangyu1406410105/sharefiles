<%@page import="com.softeem.sharefiles.db.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>    
<%
	//获取前端页面提交过来的账号密码，手机号信息
	String name = request.getParameter("username");
	String pass = request.getParameter("password");
	String phone = request.getParameter("phone");
	
	//获取连接
	Connection conn = DBHelper.getConn();
	//根据sql语句获取与处理命令
	PreparedStatement ps = conn.prepareStatement("insert into sf_user(username,password,phone) values(?,?,?)");
	//向问好填充值(预处理)
	ps.setString(1, name);
	ps.setString(2, pass);
	ps.setString(3, phone);
	//执行
	int i = ps.executeUpdate();
	if(i>0)
	{
		out.println("添加成功");
	}else{
		out.println("添加失败");
	}
%>    


    
