/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.CompanyDAO;
import dao.CvDAO;
import dao.NotificationDAO;
import dao.UserDAO;
import entity.Company;
import entity.User;
import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author victor
 */
public class LoginController extends HttpServlet {

    @EJB
    private UserDAO udao;
    @EJB
    private CompanyDAO cdao;
    @EJB
    private NotificationDAO ndao;
    @EJB
    private CvDAO cvdao;
    private RequestDispatcher rd;

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

        String username = request.getParameter("user");
        String password = request.getParameter("password");

        if (udao.loginOk(username, password)) {

            if (request.getParameter("remember") != null) {
                //here we should add cookie functionality
            } else {
                User u = udao.getUser(username);
                request.getSession().setAttribute("user", u);
                List notifications = ndao.getUserNotifications(username);
                request.getSession().setAttribute("notif", notifications);
                List cvs = cvdao.getUserCvs(username);
                request.getSession().setAttribute("cvs", cvs);
            }

            rd = request.getRequestDispatcher("user.jsp");
        } else if (cdao.loginOk(username, password)) {

            if (request.getParameter("remember") != null) {
                //cookies here also
            } else {
                Company c = cdao.getCompany(username);
                request.getSession().setAttribute("company", c);
            }
            rd = request.getRequestDispatcher("company.jsp");

        } else {
            String ERROR = "Username or password are not valid";
            request.setAttribute("ERROR", ERROR);
            rd = request.getRequestDispatcher("login.jsp");
        }

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
