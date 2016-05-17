/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Notification;
import java.util.ArrayList;
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
public class NotificationDAO {

    @PersistenceContext(unitName = "qwertyPU")
    private EntityManager em;

    public void addNotifocation(Notification notification) {

        int id;
        Query maxId = em.createNamedQuery("Notification.findAll");        

        if (maxId.getResultList().isEmpty()) {
            id = 1;
        } else {
            Notification n = (Notification) maxId.getResultList().get(maxId.getResultList().size() - 1);
            id = n.getId() + 1;
        }

        notification.setId(id);
        em.persist(notification);

    }
    
    public List getUserNotifications(String user){
        Query list =  em.createNamedQuery("Notification.findByUserName");
        list.setParameter("userName", user);
        return list.getResultList();
    }
    
    public List returnReadNotifications(String user){
        Query list = em.createNamedQuery("Notification.findReadNotifications");
        list.setParameter("userName", user);
        list.setParameter("status", "read");
        
        return list.getResultList();
    }

    public int getUnreadNotificationsForUser(String user) {

        Query number = em.createNamedQuery("Notification.findByStatusAndUsername");
        number.setParameter("userName", user);
        number.setParameter("status", "unread");
        
        return number.getResultList().size();

    }
    
    public void removeNotification(Notification n) {
        em.remove(n);
    }
    
    public Notification getNotification(Integer id){
        return em.find(Notification.class, id);
    }
    
    

}
