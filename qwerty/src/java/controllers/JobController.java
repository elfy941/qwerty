/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.JobDAO;
import entity.Company;
import entity.Job;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.json.Json;
import javax.json.JsonObject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author victor
 */
public class JobController extends HttpServlet {

    @EJB
    private JobDAO jdao;

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
        String job_description = request.getParameter("job_description");
        String work_experience = request.getParameter("work_experience");
        String key_skills = request.getParameter("key_skills");
        String education = request.getParameter("education");
        String name = request.getParameter("jobName");
        RequestDispatcher rd;
        Company c = (Company) request.getSession().getAttribute("company");

        request.getSession().removeAttribute("job_description");
        request.getSession().removeAttribute("work_experience");
        request.getSession().removeAttribute("key_skills");
        request.getSession().removeAttribute("education");
        request.getSession().removeAttribute("name");
        request.getSession().removeAttribute("companyname");

        if (add != null) {
            Job job = new Job();
            job.setDescription(job_description);
            job.setEducation(education);
            job.setKeySkills(key_skills);
            job.setExperienceNecesary(work_experience);
            job.setCompany(c.getCompanyName());
            job.setName(name);
            JsonObject appliances = Json.createObjectBuilder().build();
            job.setAppliences(appliances.toString());

            jdao.addJob(job);
            rd = request.getRequestDispatcher("companyJobs.jsp");
        } else {
            rd = request.getRequestDispatcher("jobPreview.jsp");
            request.getSession().setAttribute("job_description", job_description);
            request.getSession().setAttribute("work_experience", work_experience);
            request.getSession().setAttribute("key_skills", key_skills);
            request.getSession().setAttribute("education", education);
            request.getSession().setAttribute("name", name);
            request.getSession().setAttribute("companyname", c.getCompanyName());

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
