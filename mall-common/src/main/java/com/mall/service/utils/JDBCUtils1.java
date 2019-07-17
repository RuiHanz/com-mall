package com.mall.service.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class JDBCUtils1 {
	//获取连接
	static String driver;
	static String  url;//数据库连接的URL路径
	static String user;//连接数据库的用户名
	static String password;//连接数据库的用户对应的密码
	static {
		try {

			Properties pro = new Properties();
			InputStream in = JDBCUtils1.class.getClassLoader().getResourceAsStream("jdbc.properties");
			pro.load(in);
			driver = pro.getProperty("mysql.driver");
			url = pro.getProperty("mysql.url");
			user = pro.getProperty("mysql.user");
			password=pro.getProperty("mysql.password");
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static DataSource getDataSource() throws PropertyVetoException {
		ComboPooledDataSource ds = new ComboPooledDataSource();
		ds.setDriverClass(driver);
		ds.setJdbcUrl(url);
		ds.setUser(user);
		ds.setPassword(password);

		return ds;
	}


	public static Connection  getConnection() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	//释放资源

	public static  void releaseSource(ResultSet res , Statement stmt,Connection conn) {
		if(stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				if(conn != null) {
					try {
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		}
	}

	public static PreparedStatement getPreparedStatement(Connection conn, String sql) {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pstmt;
	}

	public static ResultSet getResultSet(Statement stmt, String sql){
		ResultSet res = null;
		try {
			res = stmt.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;

	}

	public static void close(ResultSet res, Statement stmt, Connection conn) {
		try {
			if(res != null) {
				res.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (conn != null) {
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
//	private static BasicDataSource datasource = new BasicDataSource();
//
//	//BasicDataSource对象的自定义配置 (静态代码块只会执行一次)
//	static{
//		//数据库连接信息配置,必须的
//		datasource.setDriverClassName("com.mysql.jdbc.Driver"); // 必须是全名(反射)
//		datasource.setUrl("jdbc:mysql://localhost:3306/数据库名");
//		datasource.setUsername("root");
//		datasource.setPassword("abcd986532");
//
//		//对象连接池中的连接数量配置,可选的
//		datasource.setInitialSize(10);//初始化的连接数
//		datasource.setMaxActive(8); //最大连接数量
//		datasource.setMaxIdle(5);  //最大空闲数
//		datasource.setMinIdle(1);  //最小空闲数
//	}
//
//	//定义静态方法,返回DataSource实现类的对象
//	public static DataSource getDataSource(){
//		return datasource;
//	}
}
