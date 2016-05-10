/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Listener;

import dao.CompanyDAO;
import dao.UserDAO;
import entity.Company;
import entity.User;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;
import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *
 * @author elfy
 */
public class firstListener implements ServletContextListener {
    
    
    @Inject
    private CompanyDAO cdao;
    @Inject 
    private UserDAO udao;
    
    private ResourceBundle bundle;
    private ServletContext context;    
    
    
    /**
     * The method initialise all the necesary components before the application starts.
     *  -initializing the bundle
     *  -retreving from the database all the companies and users
     * 
     * @param sce 
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        bundle = ResourceBundle.getBundle("bundles.BundleEN");
        context = sce.getServletContext();
        if (bundle != null) {
            context.setAttribute("bundle", bundle);
        }
        
        List<Company> companyList = cdao.returnAllCompanies();
        context.setAttribute("companies", companyList);
        
        List<User> userList = udao.returnAllUsers();
        context.setAttribute("users", userList);
        
        
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
