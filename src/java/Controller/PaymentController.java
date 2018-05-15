/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import dao.NewHibernateUtil;
import View.Match;
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
        switch(op){
            case 1:{
                //String dni = request.getParameter("dni");
                String zone = request.getParameter("zone");
                String price = request.getParameter("price");
                //request.setAttribute(dni, "dni");
                request.setAttribute("zone", zone);
                request.setAttribute("price", price);
                pagina = "/formulario1.jsp";
                break;
            }
            case 2:{
                String dni = request.getParameter("dni");
                String zone = request.getParameter("zone");
                String price = request.getParameter("price");
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
                Ticket ticketv =new Ticket();
                ticketv.setDni(dni);
                ticketv.setZone(zona);
                ticketv.setPrice(Float.parseFloat(soles1));
                ticketv.setCorrelative(correlative);
                Match match = new Match();
                match.setIdmatch(1);
                ticketv.setMatch(match);
                try {
                    Session sesion = NewHibernateUtil.getSessionFactory().openSession();
                    sesion.persist(ticketv);
                    sesion.beginTransaction().commit();
                    sesion.close();
                } catch (HibernateException e) {
                    e.printStackTrace();
                }
                pagina="/index.jsp";
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
