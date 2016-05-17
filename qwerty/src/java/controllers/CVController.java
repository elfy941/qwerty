/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.CvDAO;
import entity.Cv;
import entity.User;
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
public class CVController extends HttpServlet {

    @EJB
    private CvDAO cdao;
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
        
        String add = request.getParameter("add");
        String preview = request.getParameter("preview");
        String personal_profile = request.getParameter("personal_profile");
        String work_experience = request.getParameter("work_experience");
        String key_skills = request.getParameter("key_skills");
        String education = request.getParameter("education");
        RequestDispatcher rd;
        User user = (User) request.getSession().getAttribute("user");
        
        request.getSession().removeAttribute("personal_profile");
        request.getSession().removeAttribute("work_experience");
        request.getSession().removeAttribute("key_skills");
        request.getSession().removeAttribute("education");
        
        
        if(add != null){
            
            Cv cv = new Cv();
            cv.setPersonalProfile(personal_profile);
            cv.setWorkExperience(work_experience);
            cv.setKeySkills(key_skills);
            cv.setEducation(education);
            cv.setUser(user.getUserName());
            cv.setFirstName(user.getFirstName());
            cv.setLastName(user.getLastName());
            cv.setMail(user.getEmailAddress());
            cv.setPhone(user.getPhone());
            cdao.addCv(cv);
            rd = request.getRequestDispatcher("userCV.jsp");
            
        } else {
            rd = request.getRequestDispatcher("cvPreview.jsp");
            request.setAttribute("personal_profile", personal_profile);
            request.setAttribute("work_experience", work_experience);
            request.setAttribute("key_skills", key_skills);
            request.setAttribute("education", education);
            
            request.getSession().setAttribute("personal_profile", personal_profile);
            request.getSession().setAttribute("work_experience", work_experience);
            request.getSession().setAttribute("key_skills", key_skills);
            request.getSession().setAttribute("education", education);
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
