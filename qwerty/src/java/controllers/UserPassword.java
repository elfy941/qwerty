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
public class UserPassword extends HttpServlet {

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

        request.removeAttribute("message");
        request.removeAttribute("error");

        String password = request.getParameter("newpass");
        String repass = request.getParameter("repeatpass");
        User u = (User) request.getSession().getAttribute("user");

        if (password.equals(repass)) {
            u.setPassword(password);
            udao.editUser(u);
            String message = "The password had been changed";
            request.setAttribute("message", message);

            Notification n = new Notification();
            n.setMessage(message);
            n.setUserName(u.getUserName());
            n.setStatus("unread");
            ndao.addNotifocation(n);
            request.getSession().removeAttribute("notif");
            List notifications = ndao.getUserNotifications(request.getSession().getAttribute("user").toString());
            request.getSession().setAttribute("notif", notifications);

        } else {
            String ERROR = "The password do not match";
            request.setAttribute("error", ERROR);
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
