package com.school.CRUD;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class AddUserController
 */
public class AddUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String message="";
		int id=Integer.parseInt(request.getParameter("uid"));
		String userName=request.getParameter("userName");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		int age=Integer.parseInt(request.getParameter("age"));
		long phno=Long.parseLong(request.getParameter("phno"));
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		int cgpa=Integer.parseInt(request.getParameter("cgpa"));
		String course=request.getParameter("course");
		StudBean bean=new StudBean();
		bean.setUid(id);
		bean.setUserName(userName);
		bean.setEmail(email);
		bean.setUserPwd(password);
		bean.setAge(age);
		bean.setPhno(phno);
		bean.setDob(dob);
		bean.setGender(gender);
		bean.setCgpa(cgpa);
		bean.setCourse(course);
		StudCrud stcrud=new StudCrud();
		message=stcrud.addUser(bean);
		response.setContentType("text/plain");
		response.getWriter().write(message);	
	}

}
