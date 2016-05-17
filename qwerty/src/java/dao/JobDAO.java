/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Job;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author victor
 */
@Stateful
public class JobDAO {

    @PersistenceContext
    private EntityManager em;

    public void addJob(Job job) {
        int id;
        Query maxId = em.createNamedQuery("Job.findAll");

        if (maxId.getResultList().isEmpty()) {
            id = 1;
        } else {
            Job n = (Job) maxId.getResultList().get(maxId.getResultList().size() - 1);
            id = n.getId() + 1;
        }

        job.setId(id);
        em.persist(job);
    }

}
