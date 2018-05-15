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
            session.save(obj);
            tx.commit();
            session.close();
            sesion.close();
        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }
       
    public static void main(String[] args) {
        TicketDAO obj = new TicketDAO();
        Match match = new Match();
        match.setIdmatch(1);
        Ticket ticket = new Ticket();
        ticket.setDni("98977656");
        ticket.setZone("lima");
        ticket.setPrice(Float.parseFloat("3"));
        ticket.setMatch(match);
        ticket.setCorrelative("sadas");
        obj.buyTicket(ticket);  
    }
}
