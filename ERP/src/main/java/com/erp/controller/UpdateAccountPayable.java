package com.erp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.dao.AccountPayableDao;
import com.erp.entites.AccountPayable;

@WebServlet("/admin/updateaccountpayable")
public class UpdateAccountPayable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateAccountPayable() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int clientId = Integer.parseInt(request.getParameter("clientId"));
		String clientName = request.getParameter("clientName");
		int amountPaid = Integer.parseInt(request.getParameter("amountPaid"));
		int duePayment = Integer.parseInt(request.getParameter("duePayment"));
		int totalAmount = Integer.parseInt(request.getParameter("totalAmount"));
		String modeOfpayment = request.getParameter("modeOfpayment");
		String status = request.getParameter("status");
		
		AccountPayable accountPayable= new AccountPayable(clientId, duePayment, amountPaid, totalAmount, clientName, modeOfpayment, status);
		
		boolean b=AccountPayableDao.UpdateAccountPayable(accountPayable);
		
		if(b)
		{
			response.sendRedirect("accountpayable.jsp?update=true");
	}
		
	}

}
