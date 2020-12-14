package com.erp.entites;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
public class AccountPayable {

	

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "accountpayable_seq")
	@SequenceGenerator(name = "accountpayable_seq", sequenceName = "accountpayable_seq", allocationSize = 1)
	int clientId;
	int duePayment,amountPaid,totalAmount;
	String clientName,modeOfpayment,status;
	
	
	public AccountPayable() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AccountPayable(int clientId, int duePayment, int amountPaid, int totalAmount, String clientName,
			String modeOfpayment, String status) {
		super();
		this.clientId = clientId;
		this.duePayment = duePayment;
		this.amountPaid = amountPaid;
		this.totalAmount = totalAmount;
		this.clientName = clientName;
		this.modeOfpayment = modeOfpayment;
		this.status = status;
	}
	public int getClientId() {
		return clientId;
	}
	public void setClientId(int clientId) {
		this.clientId = clientId;
	}
	public int getDuePayment() {
		return duePayment;
	}
	public void setDuePayment(int duePayment) {
		this.duePayment = duePayment;
	}
	public int getAmountPaid() {
		return amountPaid;
	}
	public void setAmountPaid(int amountPaid) {
		this.amountPaid = amountPaid;
	}
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	public String getModeOfpayment() {
		return modeOfpayment;
	}
	public void setModeOfpayemnt(String modeOfpayment) {
		this.modeOfpayment = modeOfpayment;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
	
}
