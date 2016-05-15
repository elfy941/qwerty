/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.CompanyDAO;
import dao.UserDAO;
import entity.Company;
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
public class RegisterController extends HttpServlet {

    private RequestDispatcher rd;
    @EJB
    private UserDAO udao;
    @EJB
    private CompanyDAO cdao;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     *  
     * 
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("companyName") != null) {
            String companyName = (String) request.getParameter("companyName");
            String userName = (String) request.getParameter("companyUser");
            String email = (String) request.getParameter("companyMail");
            String phone = (String) request.getParameter("companyPhone");
            String password = (String) request.getParameter("password");
            String description = request.getParameter("description");
            String imageUrl = request.getParameter("file_source");

            Company c = new Company();
            c.setCompanyName(companyName);
            c.setUserName(userName);
            c.setEmailAddress(email);
            c.setPhoneNumber(phone);
            c.setPassword(password);
            c.setDescription(description);
            c.setImage(imageUrl);

            cdao.addCompany(c);
            List<Company> tmp = (List<Company>) request.getServletContext().getAttribute("companies");
            request.removeAttribute("companies");
            tmp.add(c);
            request.getServletContext().setAttribute("companies", tmp);
            
        } else {
            String firstName = (String) request.getParameter("firstName");
            String lastName = (String) request.getParameter("lastName");
            String gender = (String) request.getParameter("optradio");
            String userName = (String) request.getParameter("user_name");
            String email = (String) request.getParameter("email_address");
            String password = (String) request.getParameter("parola");
            String image = (String) request.getParameter("userImage");
            String phone = (String) request.getParameter("phone");

            User u = new User();
            u.setFirstName(firstName);
            u.setLastName(lastName);
            u.setGender(gender);
            u.setUserName(userName);
            u.setEmailAddress(email);
            u.setPassword(password);
            u.setImage(image);
            u.setPhone(phone);

            udao.addUser(u);

            

        }
        
        rd = request.getRequestDispatcher("index.jsp");
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
