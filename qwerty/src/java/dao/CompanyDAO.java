/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Company;
import java.util.List;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author victor
 */
@Stateful
public class CompanyDAO {

    @PersistenceContext(unitName = "qwertyPU")
    private EntityManager em;

    public void addCompany(Company company) {
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
        Query q = em.createNamedQuery("Company.findByEmailAddress");
        q.setParameter("emailAddress", email);

        return q.getResultList().isEmpty();

    }

    public boolean sameName(String name) {
        return em.createNamedQuery("Company.findByCompanyName").getResultList().isEmpty();
    }

    public boolean loginOk(String username, String password) {

        Object c = em.find(Company.class, username);

        if (c != null) {
            Company company = (Company) c;
            if (company.getPassword().equals(password)) {
                return true;
            }
        }
        return false;
    }

    public List<Company> returnAllCompanies() {
        return em.createNamedQuery("Company.findAll").getResultList();
    }

}
