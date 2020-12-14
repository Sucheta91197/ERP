package com.erp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.dao.AccountPayableDao;

@WebServlet("/admin/deleteaccountpayable")
public class DeleteAccountPayable extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DeleteAccountPayable() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				doPost(request, response);
				}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int clientId=Integer.parseInt(request.getParameter("clientid"));
		
		
		if(AccountPayableDao.deleteAccountPayable(clientId))
		{
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
		       out.println("alert('User or password incorrect');");
		       out.println("</script>");
			
			response.sendRedirect("accountpayable.jsp?delete=true");
			
 	}
		
		
		
	}

}
