package com.softeem.sharefiles.db;

import java.sql.*;//导入数据库相关的包

/**
 * 数据库连接工具类
 * 获取数据库的连接对象
 * 执行通用的CRUD操作
 * 
 * JDBC：java database connectivity
 * 1.加载驱动(驱动底层数据库与java之间的连接信息)
 * 2.获取连接
 * 3.执行预处理命令
 * 4.执行访问数据库的操作
 * 5.处理结果
 * 6.关闭资源
 * @author mrchai
 *
 */
public class DBHelper {

	//声明连接数据库的基本信息:驱动类路径，url，用户名，密码
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/sharefiles";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "123456";
	
	//静态块
	static{
		try {
			//加载驱动
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	//获取连接
	public static Connection getConn()
	{
		try {
			return DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String[] args) throws SQLException {
		//添加一个用户到数据库中
		//insert into sf_user(username,password,phone) values(?,?,?)
		
	}
}
