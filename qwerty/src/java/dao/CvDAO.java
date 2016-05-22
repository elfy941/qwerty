/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Cv;
import entity.Notification;
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
public class CvDAO {

    @PersistenceContext
    private EntityManager em;

    public void addCv(Cv cv) {
        int id;
        Query maxId = em.createNamedQuery("Cv.findAll");

        if (maxId.getResultList().isEmpty()) {
            id = 1;
        } else {
            Cv n = (Cv) maxId.getResultList().get(maxId.getResultList().size() - 1);
            id = n.getId() + 1;
        }

        cv.setId(id);
        em.persist(cv);
    }
    
    public List getUserCvs(String user) {
        Query q = em.createNamedQuery("Cv.findByUser");
        q.setParameter("user", user);
        
        return q.getResultList();
    }
    
    public Cv findCv(String id) {
        
        return em.find(Cv.class, Integer.parseInt(id));
    }

}
