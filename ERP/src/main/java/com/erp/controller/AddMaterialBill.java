package com.erp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erp.dao.BillOfMaterialDao;
import com.erp.entites.BillOfMaterial;

@WebServlet("/employee/production_manager/add_material_bill")
public class AddMaterialBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public AddMaterialBill() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
		}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String accessoriesName=request.getParameter("accessoriesName");
		String plantName=request.getParameter("plantName");
		String startDate=request.getParameter("startDate");
		String endDate=request.getParameter("endDate");
		String accessoriesAvailability=request.getParameter("accessoriesAvailability");
		
		BillOfMaterial billOfMaterial=new BillOfMaterial(accessoriesName,plantName,startDate,endDate,accessoriesAvailability);
		boolean saveStatus=BillOfMaterialDao.saveBillOfMaterial(billOfMaterial);
		
		if(saveStatus) {

			response.sendRedirect("bill_of_materials.jsp?add=true");
	
		}
		
		else 
		{
			response.sendRedirect("bill_of_materialst.jsp?error=true");
			
		}
		
		
	}

}
