package com.workcount.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wordcount.entity.FileCount;
import com.workcount.service.FileCountService;

/**
 * Servlet implementation class CountServlet
 */
@WebServlet("/count")
public class CountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CountServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		FileCountService fileCountService = new FileCountService();
		FileCount fileCount = null;
		String path = request.getParameter("path");
		if (path != null) {
			fileCount = fileCountService.count(path);
		} else {
			fileCount = new FileCount();
		}
		request.setAttribute("fileCount", fileCount);
		request.getRequestDispatcher("count.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
