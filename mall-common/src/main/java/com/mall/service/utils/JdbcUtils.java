package com.mall.service.utils;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

/*
 * JDBC操作的工具类
 */
public class JdbcUtils {
	private static DataSource ds = null;
	static{
		//数据源只能被创建一次
		ds = new ComboPooledDataSource("mvcdemo");
	}
	public  static DataSource getDs(){
		return ds;
	}
	/**
	 * 释放Connection链接
	 * @param connection
	 */
	public static void releaseConnection(Connection connection){
		try{
			if(connection != null){
				connection.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	/*
	 * 返回数据源的一个Connection对象
	 */
	public static Connection getConnection() throws SQLException{
		return ds.getConnection();
	}
}
