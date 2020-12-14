package com.erp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.dao.BudgetDao;
import com.erp.entites.Budget;

@WebServlet("/admin/updatebudget")
public class UpdateBudget extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateBudget() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int budgetId = Integer.parseInt(request.getParameter("budgetId"));
     
		String budgetName = request.getParameter("budgetName");

		int grossBudget = Integer.parseInt(request.getParameter("grossBudget"));

		String department = request.getParameter("department");

		String budgetDate = request.getParameter("budgetDate");

		String status = request.getParameter("status");

		Budget budget = new Budget(budgetId,grossBudget, budgetName, department, status, budgetDate);

		boolean saveStatus = BudgetDao.updateBudget(budget);

		if (saveStatus) {

			response.sendRedirect("budget.jsp?update=true");

		}

		else {
			response.sendRedirect("budget.jsp?error=true");

		}

	}

}
