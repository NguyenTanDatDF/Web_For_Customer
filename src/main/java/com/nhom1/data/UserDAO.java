package com.nhom1.data;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.nhom1.data.HibernateUtil;

import com.nhom1.model.Customer;


public class UserDAO {

 
	
	
	@SuppressWarnings("unchecked")
    public List<Customer> listAllCustomer() {
        try {
            return HibernateUtil.getSessionFactory().openSession().createQuery("From Customer").getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    
    
    public void saveCustomer(Customer customer) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.save(customer);
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
       
    public void updateCustomer(Customer customer) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            session.update(customer);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
    
    public void deleteCustomer(int id) {

        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();

            // Delete a user object
            Customer product = session.get(Customer.class, id);
            if (product != null) {
                session.delete(product);
                System.out.println("user is deleted");
            }

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
    
    public Customer getCustomer(int id) {

        Transaction transaction = null;
        Customer customer = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            customer = session.get(Customer.class, id);
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return customer;
    }
    
    public void Account(int id, String firstname, String lastname, String birthday, String phone, String email) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            String hqlUpdate = "update Customer c set c.firstname = :newfirstname, c.lastname = :newlastname, c.birthday = :newbirthday, c.phone = :newphone, c.email = :newemail  where c.id = :id";
            // or String hqlUpdate = "update Customer set name = :newName where name = :oldName";
            int updatedEntities = session.createQuery( hqlUpdate )
                    .setParameter( "newfirstname", firstname )
                    .setParameter( "newlastname", lastname )
                    .setParameter( "newbirthday", birthday )
                    .setParameter( "newphone", phone )
                    .setParameter( "newemail", email )
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
    
    public void ChangePassword(int id, String pass) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            // start a transaction
            transaction = session.beginTransaction();
            // save the student object
            String hqlUpdate = "update Customer c set c.password = :newpassword where c.id = :id";
            // or String hqlUpdate = "update Customer set name = :newName where name = :oldName";
            int updatedEntities = session.createQuery( hqlUpdate )
                    .setParameter( "newpassword", pass)
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