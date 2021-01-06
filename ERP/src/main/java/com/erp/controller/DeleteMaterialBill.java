package com.erp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.dao.BillOfMaterialDao;

@WebServlet("/employee/production_manager/delete_material_bill")
public class DeleteMaterialBill extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteMaterialBill() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int accessoriesId = Integer.parseInt(request.getParameter("accessoriesId"));

		boolean status = BillOfMaterialDao.deleteBillOfMaterial(accessoriesId);

		if (status) {
			response.sendRedirect("bill_of_materials.jsp?delete=true");
		}
		else {
			response.sendRedirect("bill_of_materials.jsp?error=true");
			
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
