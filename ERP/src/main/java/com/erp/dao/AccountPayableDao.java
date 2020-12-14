package com.erp.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.erp.entites.AccountPayable;
import com.erp.utill.HibernateUtill;

public class AccountPayableDao {

	public static void saveAccountPayable() 
	{

		AccountPayable a = new AccountPayable();
		a.setClientName("gaurav");
		a.setAmountPaid(1200);
		a.setModeOfpayemnt("online");
		a.setDuePayment(4500);
		a.setStatus("paid");
		a.setTotalAmount(10000);
		Session session = HibernateUtill.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.save(a);
		transaction.commit();
		session.close();
	}

	public static List<AccountPayable> getAllAccountPayable() {

		Session session = HibernateUtill.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<AccountPayable> list = new ArrayList<AccountPayable>();
		Query query = session.createQuery("from AccountPayable");
		list = query.list();
		transaction.commit();
		session.close();
		System.out.println(list);
		return list;

	}

	public static AccountPayable getAccountPayable(int id) {

		SessionFactory sf = HibernateUtill.getSessionFactory();

		Session session = sf.openSession();

		Transaction tx = session.beginTransaction();
		AccountPayable ap = session.get(AccountPayable.class, id);
		if(ap!=null) 
		{
			return ap;
		}
		tx.commit();
		session.close();
		return new AccountPayable() ;
	}

	public static boolean UpdateAccountPayable(AccountPayable accountPayable) {

		SessionFactory sf = HibernateUtill.getSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(accountPayable);
		tx.commit();
		session.close();
		return true;

	}

	public static boolean deleteAccountPayable(int id) {

		SessionFactory sf = HibernateUtill.getSessionFactory();

		Session session = sf.openSession();

		Transaction tx = session.beginTransaction();

		
		session.delete(getAccountPayable(id));;
		tx.commit();
		session.close();

		return true;
	}

}
