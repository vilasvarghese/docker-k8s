<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<html>
<head>
<title>Customer application </title>
</head>
<body>
<h1>Connection status to check mysql </h1>
<%
try {
        Class.forName("com.mysql.jdbc.Driver");
        //Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        out.println("Loaded the mysqldb driver ....<br>");
        java.sql.Connection con =
        DriverManager.getConnection("jdbc:mysql://mysqldb:3306/classicmodels","root","admin");
        out.println("<br>Established the connection..<br>");

        Statement st= con.createStatement();
        ResultSet rs=st.executeQuery("select * from customers");
        while(rs.next())
        {

                out.println("First Name:"+rs.getString(3));
                out.println("        ");
                out.println("Last Name:"+rs.getString(4));
                out.println("<br>");
	}
        rs.close();
        st.close();
        con.close();
    }
    catch(Exception ex){
    %>
    </font>
    <font size="+3" color="red"></b>
    <%
       out.println("Unable to connect to database."+ex.getMessage());
       ex.printStackTrace();
    }
%>

