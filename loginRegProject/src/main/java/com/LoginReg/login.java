package com.LoginReg;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public login() {
        super();

    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String uemail = request.getParameter("email");
	String pass = request.getParameter("password");
	HttpSession session = request.getSession();
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/company","root","root");
		PreparedStatement ps = con.prepareStatement("select * from user where email= ? and upwd =? ");
		ps.setString(1, uemail);
		ps.setString(2, pass);
	   ResultSet rs=ps.executeQuery();
	   if(rs.next()) {
		  session.setAttribute("name",rs.getString("uname"));
		   response.sendRedirect(request.getContextPath()+"/Home.jsp");
	   }else {
		   request.setAttribute("status","error");
		   response.sendRedirect(request.getContextPath()+"/LogInjsp.jps");
	   }
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	}

}
