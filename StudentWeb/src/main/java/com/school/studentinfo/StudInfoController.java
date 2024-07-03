package com.school.studentinfo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class StudInfoController
 */
public class StudInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String studName=request.getParameter("studName");
		int studAge=Integer.parseInt(request.getParameter("studAge"));
		String studGen=request.getParameter("studGen");
		String studDob=request.getParameter("studDob");
		String studEmail=request.getParameter("studEmail");
		StudCRUD scrud=new StudCRUD();
		StudBean sbean=new StudBean();
		sbean.setSname(studName);
		sbean.setAge(studAge);
		sbean.setGender(studGen);
		sbean.setEmail(studEmail);
		String msg=scrud.addStud(sbean);
		System.out.println(msg);
		response.setContentType("text/plain");
		response.getWriter().write("Hai "+studName);
	}

}
