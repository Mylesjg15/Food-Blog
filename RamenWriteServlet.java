package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Ramen;
import com.service.RamenService;

/**
 * Servlet implementation class RamenWriteServlet
 */
public class RamenWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RamenWriteServlet() {

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.getWriter().append("Ramen Database has sucessfully updated");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Ramen ramen = new Ramen();
		RamenService service = new RamenService();

		ramen.setShop_Name(request.getParameter("shop_name"));
		ramen.setCity(request.getParameter("city"));
		ramen.setBroth(request.getParameter("broth"));
		ramen.setRating(Integer.parseInt(request.getParameter("rating")));
		
//		System.out.println(ramen);
		
		HttpSession session = request.getSession();
		session.setAttribute("message", "Thank you for submitting your Ramen experience with us");
//		request.getRequestDispatcher("Ramen/List").forward(request, response);
		
		String action = request.getParameter("action");
		int recordCount = 0;
		
		if (action.equals("add")) {
			recordCount = service.insert(ramen);
			System.out.println("Added " + recordCount + " record.");
			request.getRequestDispatcher("Ramen/List").forward(request, response);
		}
		else if (action.contentEquals("update")) {
			ramen.setRamen_Id(Integer.parseInt(request.getParameter("ramen_id")));
			recordCount = service.update(ramen);
			request.getRequestDispatcher("Ramen/List").forward(request, response);
		}
		else {
			System.out.println("Was not able to execute a function!");
		}
	}

}
