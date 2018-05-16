/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.PaymentDAO;
import DAO.TicketDAO;
import View.Bank;
import dao.NewHibernateUtil;
import View.Match;
import View.Payment;
import View.Ticket;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.ehcache.hibernate.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author user
 */
public class PaymentController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String opcad = request.getParameter("op");
        int op = Integer.parseInt(opcad);
        String pagina = "";
        switch (op) {
            case 1: {
                //String dni = request.getParameter("dni");
                String zone = request.getParameter("zone");
                String price = request.getParameter("price");
                //request.setAttribute(dni, "dni");
                request.setAttribute("zone", zone);
                request.setAttribute("price", price);
                pagina = "/formulario1.jsp";
                break;
            }
            case 2: {
                int code=0;
                String dni = request.getParameter("dni");
                String zone = request.getParameter("zone");
                String price = request.getParameter("price");  
                 try {
                    Session session = NewHibernateUtil.getSessionFactory().openSession();
                    session.beginTransaction().commit();
                     code = session.createQuery("SELECT COUNT(*) FROM Ticket").uniqueResult().hashCode();
                    code++;
                    session.beginTransaction().commit();
                    session.close();
                } catch (Exception e) {
                }
                  request.setAttribute("code", String.valueOf(code));
                  request.setAttribute("dni", dni);
                request.setAttribute("zone", zone);
                request.setAttribute("price", price);
                pagina = "/formulario.jsp";
                break;
            }
            case 3: {
                String dni = request.getParameter("dni");
                String soles1 = request.getParameter("pago");
                String zona = request.getParameter("zona");
                String correlative = request.getParameter("correlativo");
                int bank = Integer.parseInt(request.getParameter("bank"));
                Ticket ticketv = new Ticket();
                ticketv.setDni(dni);
                ticketv.setZone(zona);
                ticketv.setPrice(Float.parseFloat(soles1));
                ticketv.setCorrelative(correlative);
                Match match = new Match();
                match.setIdmatch(1);
                ticketv.setMatch(match);
                //Rgistro de payment
                Bank bankv = new Bank();
                bankv.setIdbank(bank);
                Payment paymentv = new Payment();
                try {
                    Session session = NewHibernateUtil.getSessionFactory().openSession();
                    session.persist(ticketv);
                    session.beginTransaction().commit();
                    int code = session.createQuery("SELECT COUNT(*) FROM Ticket").uniqueResult().hashCode();
                    paymentv.setIdpayment(correlative);
                    ticketv.setIdticket(code);
                    paymentv.setTicket(ticketv);
                    paymentv.setBank(bankv);
                    session.persist(paymentv);
                    session.beginTransaction().commit();
                    session.close();
                } catch (Exception e) {
                }

                pagina = "/index.jsp";
                break;
            }
        }
        getServletContext().getRequestDispatcher(pagina).forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
