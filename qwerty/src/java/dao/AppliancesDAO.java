/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Apliances;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author victor
 */
@Stateful
public class AppliancesDAO {
    
    @PersistenceContext
    private EntityManager em;
    
    public void addAppliance(Apliances ap) {
        int id;
        Query maxId = em.createNamedQuery("Apliances.findAll");

        if (maxId.getResultList().isEmpty()) {
            id = 1;
        } else {
            Apliances n = (Apliances) maxId.getResultList().get(maxId.getResultList().size() - 1);
            id = n.getId() + 1;
        }

        ap.setId(id);
        em.persist(ap);
    }
    
}
