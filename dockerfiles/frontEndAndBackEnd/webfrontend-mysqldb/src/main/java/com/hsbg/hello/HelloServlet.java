package com.hsbg.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement; 




/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/helloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String yourName = request.getParameter("username");
		PrintWriter writer = response.getWriter();
		writer.println("<h1>Hello " + yourName + "</h1>");

// Initialize all the information regarding 
        // Database Connection 
        String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql://localhost:3306/"; 
        // Database name to access 
        String dbName = "classicmodels"; 
        String dbUsername = "root"; 
        String dbPassword = "admin"; 
        ResultSet rs = null;
        Statement stmt = null;
        Connection con = null;
        writer.println("<h1>Hello " + yourName + "</h1>");
        
        try {
		Class.forName(dbDriver);
		con = DriverManager.getConnection(dbURL + dbName, dbUsername,dbPassword); 
		// Execute SQL query
	        stmt = con.createStatement();
	        String sql;
	        sql = "SELECT * FROM customers";
	        rs = stmt.executeQuery(sql);

	         // Extract data from result set
	        while(rs.next()){
	            //Retrieve by column name
	            String first = rs.getString("contactFirstName");
	            String last = rs.getString("contactLastName");

	            //Display values
	            writer.println(" First: " + first + "");
	            writer.println(", Last: " + last + "<br>");
	         }
	         			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();	
		}
        	try {rs.close();}catch(Exception e) {}
        	try {stmt.close();}catch(Exception e) {}
        	try {con.close();}catch(Exception e) {}
		writer.close();
	}

}

