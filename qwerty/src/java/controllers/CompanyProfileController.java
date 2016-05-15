/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.CompanyDAO;
import dao.UserDAO;
import entity.Company;
import java.io.IOException;
import java.io.PrintWriter;
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
public class CompanyProfileController extends HttpServlet {

    @EJB
    private CompanyDAO cdao;
    @EJB
    private UserDAO udao;

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
        String companyName = request.getParameter("company_name");
        String companyUser = request.getParameter("company_user");
        String companyMail = request.getParameter("company_mail");
        String companyPhone = request.getParameter("company_phone");
        String companyDetails = request.getParameter("description");
        Company c = (Company) cdao.getCompany(companyUser);
        String message;
        
        if ((companyMail == null || !cdao.sameEmail(companyMail) || !udao.sameEmail(companyMail)) || companyMail.equals(c.getEmailAddress())) {

            if (companyName != null && !companyName.equals(c.getCompanyName())) {
                c.setCompanyName(companyName);
            }
            if (companyMail != null) {
                c.setEmailAddress(companyMail);
            }
            if (companyPhone != null && !companyPhone.equals(c.getPhoneNumber())) {
                c.setPhoneNumber(companyPhone);
            }
            if (companyDetails != null && companyDetails.equals(c.getDescription())) {
                c.setDescription(companyDetails);
            }

            cdao.editCompany(c);
            request.getSession().removeAttribute("company");
            request.getSession().setAttribute("company", c);
            message = "Data has been changed";
            request.setAttribute("OK", message);

        }else{
            message = "The data is already in use";
            request.setAttribute("NO", message);
        }
        
        RequestDispatcher rd = request.getRequestDispatcher("companyProfile.jsp");
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
