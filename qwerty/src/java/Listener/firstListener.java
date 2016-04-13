/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Listener;

import java.util.ResourceBundle;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *
 * @author elfy
 */
public class firstListener implements ServletContextListener {

    private ResourceBundle bundle;
    private ServletContext context;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        bundle = ResourceBundle.getBundle("bundles.BundleEN");
        context = sce.getServletContext();
        if (bundle != null) {
            context.setAttribute("bundle", bundle);
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
