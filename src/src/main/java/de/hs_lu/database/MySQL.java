package de.hs_lu.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQL {
	
	Connection dbConn;
	
	String dbDriverName = "com.mysql.jdbc.Driver";
	String dbName = System.getenv("OPENSHIFT_APP_NAME");
	String dbHost = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
	String dbPort = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
	String dbURL = "jdbc:mysql://" + dbHost + ":" + dbPort + "/" + dbName;
	String dbUser = System.getenv("OPENSHIFT_MYSQL_DB_USERNAME");
	String dbPassword = System.getenv("OPENSHIFT_MYSQL_DB_PASSWORD");
	

	public MySQL() throws ClassNotFoundException, SQLException {
		// TODO Auto-generated constructor stub
		super();
		this.createConnection();
		
	}

	public void createConnection() throws ClassNotFoundException, SQLException {
		Class.forName(dbDriverName);
		System.out.println("MySQL Treiber erfolgreich geladen!");
		
		dbConn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
		System.out.println("Datenbankverbindung erfolgreich angelegt!");
	}
	
	public Connection getConnection() throws SQLException {
		return dbConn;
	}
	
	
}
