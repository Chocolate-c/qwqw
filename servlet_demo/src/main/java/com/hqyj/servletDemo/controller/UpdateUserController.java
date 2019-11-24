package com.hqyj.servletDemo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hqyj.servletDemo.dao.UserDaoImpl;
import com.hqyj.servletDemo.entity.User;

/**
 * Servlet implementation class UpdateUserController
 */
@WebServlet("/UpdateUserController")
public class UpdateUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		UserDaoImpl userDao = new UserDaoImpl();
		
		User user = (User) request.getSession().getAttribute("user");
		if (user == null) {
			//请求转发
			request.getRequestDispatcher("/login").forward(request, response);
			return;
		}
		
		String userId = request.getParameter("userId");
		User userSelected = userDao.getUserByUserId(Integer.parseInt(userId));
		request.setAttribute("user", userSelected);
		
		request.getRequestDispatcher("/jsp/updateUser.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
