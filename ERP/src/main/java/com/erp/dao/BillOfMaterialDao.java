package com.erp.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.erp.entites.AccountPayable;
import com.erp.entites.BillOfMaterial;
import com.erp.entites.Budget;
import com.erp.utill.HibernateUtill;

public class BillOfMaterialDao

{
	public static boolean saveBillOfMaterial(BillOfMaterial billOfMaterial) {

		Boolean status = false;
		Session session = HibernateUtill.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		if ((Integer) session.save(billOfMaterial) != 0) {
			status = true;
		}
		transaction.commit();
		session.close();
		return status;

	}

	public static BillOfMaterial getBillOfMaterial(int accessoriesId) {

		SessionFactory sf = HibernateUtill.getSessionFactory();

		Session session = sf.openSession();

		Transaction tx = session.beginTransaction();

		BillOfMaterial billOfMaterial = session.get(BillOfMaterial.class, accessoriesId);
		if (billOfMaterial != null) {
			return billOfMaterial;
		}
		tx.commit();
		session.close();
		return new BillOfMaterial();
	}

	public static List<BillOfMaterial> getAllBillOfMaterial() {

		Session session = HibernateUtill.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<BillOfMaterial> list = new ArrayList<BillOfMaterial>();
		Query query = session.createQuery("from BillOfMaterial");
		list = query.list();
		transaction.commit();
		session.close();
		System.out.println(list);
		return list;

	}

	public static boolean updateBillOfMaterial(BillOfMaterial billOfMaterial) {

		SessionFactory sf = HibernateUtill.getSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(billOfMaterial);
		tx.commit();
		session.close();
		return true;

	}

	public static boolean deleteBillOfMaterial(int accessoriesId) {

		SessionFactory sf = HibernateUtill.getSessionFactory();

		Session session = sf.openSession();

		Transaction tx = session.beginTransaction();

		session.delete(getBillOfMaterial(accessoriesId));

		tx.commit();
		session.close();

		return true;
	}

}
