package com.erp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.dao.BudgetDao;
import com.erp.entites.Budget;

@WebServlet("/admin/addbudget")
public class AddBudget extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddBudget() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String budgetName = request.getParameter("budgetName");

		int grossBudget = Integer.parseInt(request.getParameter("grossBudget"));

		String department = request.getParameter("department");

		String budgetDate = request.getParameter("budgetDate");
		
          String status = request.getParameter("status");
		
		Budget budget= new Budget(grossBudget, budgetName, department, status,budgetDate);
		
		boolean saveStatus=BudgetDao.saveBudget(budget);
		
		if(saveStatus) {

			response.sendRedirect("budget.jsp?add=true");
	
		}
		
		else 
		{
			response.sendRedirect("budget.jsp?error=true");
			
		}
		
	}

}
