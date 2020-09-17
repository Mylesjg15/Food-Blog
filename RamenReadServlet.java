package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Ramen;
import com.service.RamenService;

/**
 * Servlet implementation class RamenReadServlet
 */
public class RamenReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RamenReadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RamenService service = new RamenService();
		ArrayList<Ramen> ramens = service.getAll();

		String idString = request.getParameter("id");
		String idBroth = request.getParameter("broth");
		String idRating = request.getParameter("rating");
		
		if (idString != null) {
			//If an ID is found it will update that entry 
			Integer id = Integer.parseInt(idString);
			Ramen ramen = service.getById(id);

			HttpSession session = request.getSession();
			session.setAttribute("ramens", ramen);
			request.getRequestDispatcher("../RamenPages/Update.jsp").forward(request, response);
		}
		else if (idBroth != null) {
			ArrayList<Ramen> brothRamens = service.getAllByBroth(idBroth);
			
			HttpSession session = request.getSession();
			session.setAttribute("ramens", brothRamens);
			request.getRequestDispatcher("../RamenPages/DisplayRamens.jsp").forward(request, response);
		}
		else if (idRating != null) {
			Integer rating = Integer.parseInt(idRating);
			ArrayList<Ramen> ratingRamens = service.getAllByRating(rating);
			
			HttpSession session = request.getSession();
			session.setAttribute("ramens", ratingRamens);
			request.getRequestDispatcher("../RamenPages/DisplayRamens.jsp").forward(request, response);
		}
		else {
			HttpSession session = request.getSession();
			session.setAttribute("ramens", ramens);
			request.getRequestDispatcher("../RamenPages/DisplayRamens.jsp").forward(request, response);
			
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
