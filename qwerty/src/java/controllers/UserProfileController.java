/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.NotificationDAO;
import dao.UserDAO;
import entity.Notification;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author victor
 */
public class UserProfileController extends HttpServlet {

    @EJB
    private UserDAO udao;
    @EJB
    private NotificationDAO ndao;

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
        request.removeAttribute("NO");
        request.removeAttribute("OK");
        String name = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String email = request.getParameter("email_address");   
        User u = (User) request.getSession().getAttribute("user");
        String message;

        if ((email == null || !udao.sameEmail(email)) || email.equals(u.getEmailAddress())) {
            
            
            if (name != null && !u.getFirstName().equals(name)) {
                u.setFirstName(name);
            }
            if (lastName != null && !u.getLastName().equals(lastName)) {
                u.setLastName(lastName);
            }           
            if (email != null && !u.getEmailAddress().equals(email)) {
                u.setEmailAddress(email);
            }
            
            udao.editUser(u);
            request.getSession().removeAttribute("user");
            request.getSession().setAttribute("user", u);
            message = "Data has been changed";
            request.setAttribute("OK", message);
            
            Notification n = new Notification();
            n.setMessage(message);
            n.setUserName(u.getUserName());
            n.setStatus("unread");
            ndao.addNotifocation(n);
            request.getSession().removeAttribute("notif");
            List notifications = ndao.getUserNotifications(request.getSession().getAttribute("user").toString());
            request.getSession().setAttribute("notif", notifications);
           
            
            
        } else {        
            message = "The e-mail is already in use";
            request.setAttribute("NO", message);
        }
        RequestDispatcher rd = request.getRequestDispatcher("userProfile.jsp");
        rd.forward(request, response);

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
