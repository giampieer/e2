package DAO;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import View.Match;
import View.Ticket;
public class TicketDAO {

    public void buyTicket(Ticket obj){
        try {
            SessionFactory sesion = dao.NewHibernateUtil.getSessionFactory();
            Session session;
            session = sesion.openSession();
            Transaction tx = session.beginTransaction();
            session.persist(obj);
            tx.commit();
            session.close();
            sesion.close();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }
    
    public int generateCode(){
        int code = 0;
        try {
            SessionFactory sesion = dao.NewHibernateUtil.getSessionFactory();
            Session session;
            session = sesion.openSession();
            code = session.createQuery("SELECT COUNT(*) FROM Ticket").uniqueResult().hashCode();
            //code++;
            session.close();
            sesion.close();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return code;
    }
       
    public static void main(String[] args) {
        TicketDAO obj = new TicketDAO();
        //int code = obj.generateCode();
        System.out.println(""+obj.generateCode());
    }
}
