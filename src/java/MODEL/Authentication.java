/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MODEL;

import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*; 
public class Authentication extends HttpServlet{

private ServletConfig config;

public void init(ServletConfig config)
throws ServletException{
this.config=config;
}
public void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException,IOException{

PrintWriter out = response.getWriter();
String connectionURL = "jdbc:mysql://intracker.com.br:3306/fdb";
Connection connection=null;
ResultSet rs;
String email=new String("");
String passwrd=new String("");
response.setContentType("text/html");
try {
// Load the database driver
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
connection = DriverManager.getConnection(connectionURL, "fdb", "fdb"); 
//Add the data into the database
String sql = "select Email,Password from DCE_Pessoa";
Statement s = connection.createStatement();
s.executeQuery (sql);
rs = s.getResultSet();
while (rs.next ()){
email=rs.getString("Email");
passwrd=rs.getString("Password");
}
rs.close ();
s.close ();
}catch(Exception e){
System.out.println("Exception is ;"+e);
}
if(email.equals(request.getParameter("user"))
&& passwrd.equals(request.getParameter("pass"))){
out.println("WELCOME "+email);
}
else{
out.println("Please enter correct username and password");
out.println("<a href='AuthenticLogin.jsp'><br>Login again</a>");
}
}
}
