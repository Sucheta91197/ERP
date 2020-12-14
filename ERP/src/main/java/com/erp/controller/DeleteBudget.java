package com.erp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.dao.BudgetDao;

@WebServlet("/admin/deletebudget")
public class DeleteBudget extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteBudget() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	int budgetid=Integer.parseInt(request.getParameter("budgetid"));
	
	if(BudgetDao.deleteBudget(budgetid))
	{

		response.sendRedirect("budget.jsp?delete=true");
	}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
