/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.CompanyDAO;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author victor
 */
public class AjaxController extends HttpServlet {

    @EJB
    private UserDAO udao;
    @EJB
    private CompanyDAO cdao;

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

        if (request.getParameter("user_name") != null) {
            if (udao.getUser(request.getParameter("user_name")) != null) {
                response.getWriter().write("The username is already in use");
            }
        }
        
        if (request.getParameter("companyUser") != null ){
            if (cdao.getCompany(request.getParameter("companyUser")) != null){
                response.getWriter().write("The username is already in use");
            }            
        } 
        
        if (request.getParameter("email_address") != null) {
            if(udao.sameEmail(request.getParameter("email_address")) == true ) {
                response.getWriter().write("The e-mail address is already in use");
            }
        }
        
        if (request.getParameter("companyMail") != null) {
            if(cdao.sameEmail(request.getParameter("companyMail")) == true ) {
                response.getWriter().write("The e-mail address is already in use");
            }
        }
        
        if (request.getParameter("companyName") != null) {
            if(cdao.sameName(request.getParameter("companyName")) == true ) {
                response.getWriter().write("The name of company is already in use");
            }
        }

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
