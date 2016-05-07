/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Company;
import javax.ejb.LocalBean;
import javax.ejb.Stateful;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author victor
 */

@Stateless
@LocalBean
public class CompanyDAO {
    
    @PersistenceContext(unitName = "qwertyPU")
    private EntityManager em;
    
    public void addCompany(Company company){
        em.persist(company);
    }
    
    public void editCompany(Company company) {
        em.persist(company);
    }
    
    public void deleteCompany(Company company) {
        em.remove(company);
    }
    
    public Company getCompany(String company) {
       return em.find(Company.class, company);
    }
    
    public boolean sameEmail(String email) {
        return em.createNamedQuery("Company.findByEmailAddress") != null;
    }
    
    public boolean sameName(String name) {
        return em.createNamedQuery("Company.findByCompanyName") != null; 
    }
    
}
