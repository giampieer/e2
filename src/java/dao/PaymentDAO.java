package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import View.Bank;
import View.Payment;
import View.Ticket;

public class PaymentDAO {
    Connection cn=null;
    PreparedStatement pt =null;
    ResultSet rs=null;

    public void insertPayment(Payment obj) {
        try {
            SessionFactory sesion = dao.NewHibernateUtil.getSessionFactory();
            Session session;
            session = sesion.openSession();
            Transaction tx = session.beginTransaction();
            session.save(obj);
            tx.commit();
            session.close();
            sesion.close();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }
    
    public static void main(String[] args) {
        PaymentDAO obj = new PaymentDAO();
        Bank bank = new Bank();
        Ticket ticket = new Ticket();
        Payment payment = new Payment();
        payment.setIdpayment("sadasdas");
        bank.setIdbank(2);
        payment.setBank(bank);
        ticket.setIdticket(1);
        payment.setTicket(ticket);
        obj.insertPayment(payment);
    }
       

}
