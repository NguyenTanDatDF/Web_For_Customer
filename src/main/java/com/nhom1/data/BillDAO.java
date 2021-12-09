package com.nhom1.data;



import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.nhom1.data.HibernateUtil;
import com.nhom1.model.Bill;
import com.nhom1.model.Customer;
import com.nhom1.model.Product;


public class BillDAO {

 
	
	
	@SuppressWarnings("unchecked")
	public List<Bill> listAllBill() {
        try {
      
        	return HibernateUtil.getSessionFactory().openSession().createQuery("SELECT a FROM Bill a", Bill.class).getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
    }
    
    
    
    public void saveBill(Bill bill) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.save(bill);
            // commit transaction
            transaction.commit();
            session.close();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
}
    

    
    public void updateBill(int id, int newQuatity) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            String hqlUpdate = "update Product c set c.quatity = :newQuatity where c.id = :id";
            // or String hqlUpdate = "update Customer set name = :newName where name = :oldName";
            int updatedEntities = session.createQuery( hqlUpdate )
                    .setParameter( "newQuatity", newQuatity )
                    .setParameter( "id", id )
                    .executeUpdate();
            // commit transaction
            transaction.commit();
            session.close();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
}
    

    
}