package com.softeem.sharefiles.db;

import java.sql.*;//�������ݿ���صİ�

/**
 * ���ݿ����ӹ�����
 * ��ȡ���ݿ�����Ӷ���
 * ִ��ͨ�õ�CRUD����
 * 
 * JDBC��java database connectivity
 * 1.��������(�����ײ����ݿ���java֮���������Ϣ)
 * 2.��ȡ����
 * 3.ִ��Ԥ��������
 * 4.ִ�з������ݿ�Ĳ���
 * 5.������
 * 6.�ر���Դ
 * @author mrchai
 *
 */
public class DBHelper {

	//�����������ݿ�Ļ�����Ϣ:������·����url���û���������
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/sharefiles";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "123456";
	
	//��̬��
	static{
		try {
			//��������
			Class.forName(DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	//��ȡ����
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
		//���һ���û������ݿ���
		//insert into sf_user(username,password,phone) values(?,?,?)
		
	}
}
