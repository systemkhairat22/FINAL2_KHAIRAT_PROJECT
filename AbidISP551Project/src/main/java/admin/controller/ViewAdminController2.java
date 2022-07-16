package admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.dao.*;
@WebServlet("/ViewAdminController2")
public class ViewAdminController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DaoAdmin dao;
    public ViewAdminController2() {
        super();
        dao = new DaoAdmin();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int id = (int)session.getAttribute("currentSessionUser");
		request.setAttribute("a", DaoAdmin.getAdminById(id));
		RequestDispatcher view = request.getRequestDispatcher("homeadmin.jsp");
		view.forward(request, response);
	}
}
