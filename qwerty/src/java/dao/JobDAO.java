/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Cv;
import entity.Job;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.List;
import javax.ejb.Stateful;
import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.JsonValue;
import javax.json.stream.JsonGenerator;
import javax.json.stream.JsonGeneratorFactory;
import javax.json.stream.JsonParser;
import javax.json.stream.JsonParser.Event;
import javax.json.stream.JsonParserFactory;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import jdk.nashorn.internal.parser.JSONParser;

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

    public List searchOption(String search) {

        Query q = em.createNamedQuery("Job.findBySearch");
        q.setParameter("name", "%" + search + "%");

        return q.getResultList();

    }

    public Job findJob(String name, String description, String company, String experience, String skills, String education) {
        Query q = em.createNamedQuery("Job.findJob");
        q.setParameter("name", name);
        q.setParameter("description", description);
        q.setParameter("company", company);
        q.setParameter("exp", experience);
        q.setParameter("skills", skills);
        q.setParameter("education", education);

        return (Job) q.getSingleResult();
    }

}
