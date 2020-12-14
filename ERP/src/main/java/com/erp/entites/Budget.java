package com.erp.entites;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
public class Budget {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "budget_seq")
	@SequenceGenerator(name = "budget_seq", sequenceName = "budget_seq", allocationSize = 1)

	int budgetId;
	int grossBudget;
	String budgetName, department, status, dateOfapproval;

	public Budget() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Budget(int grossBudget, String budgetName, String department, String status, String dateOfapproval) {
		super();
		this.grossBudget = grossBudget;
		this.budgetName = budgetName;
		this.department = department;
		this.status = status;
		this.dateOfapproval = dateOfapproval;
	}

	public Budget(int budgetId, int grossBudget, String budgetName, String department, String status,
			String dateOfapproval) {
		super();
		this.budgetId = budgetId;
		this.grossBudget = grossBudget;
		this.budgetName = budgetName;
		this.department = department;
		this.status = status;
		this.dateOfapproval = dateOfapproval;
	}

	public int getBudgetId() {
		return budgetId;
	}

	public void setBudgetId(int budgetId) {
		this.budgetId = budgetId;
	}

	public int getGrossBudget() {
		return grossBudget;
	}

	public void setGrossBudget(int grossBudget) {
		this.grossBudget = grossBudget;
	}

	public String getBudgetName() {
		return budgetName;
	}

	public void setBudgetName(String budgetName) {
		this.budgetName = budgetName;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDateOfapproval() {
		return dateOfapproval;
	}

	public void setDateOfapproval(String dateOfapproval) {
		this.dateOfapproval = dateOfapproval;
	}

}
