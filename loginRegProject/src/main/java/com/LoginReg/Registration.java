package com.LoginReg;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Registration() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out = response.getWriter();
	 String uname = request.getParameter("username");
	 String uemail = request.getParameter("email");
	 String upwd = request.getParameter("password");
	 int umobile = Integer.parseInt(request.getParameter("contact"));
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/company","root","root");
	    PreparedStatement ps =con.prepareStatement("insert into user(uname,upwd ,email ,umobile) values(?,?,?,?)");
	    ps.setString(1, uname);
	    ps.setString(2, upwd);
	    ps.setString(3, uemail);
	    ps.setInt(4, umobile);
	   int rowcount = ps.executeUpdate();
	   if(rowcount >0) {
		   request.setAttribute("status", "success");
		   response.sendRedirect(request.getContextPath()+"/LogInjsp.jsp");
	   }else {
		   request.setAttribute("status", "error");
	   }
	}
	catch(Exception e) {
		e.printStackTrace();
	}

}
}