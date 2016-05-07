/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.User;
import javax.ejb.LocalBean;
import javax.ejb.Stateful;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

/**
 *
 * @author victor
 */

@Stateful
public class UserDAO {
    
    @PersistenceContext(unitName = "qwertyPU", type = PersistenceContextType.EXTENDED )
    private EntityManager em;
    
    public void addUser(User user){
        em.persist(user);
    }
    
    public void editUser(User user){
        em.merge(user);
    }
    public void deleteUser(User user){
        em.remove(user);
    }
    
    public User getUser(String userName){
      return em.find(User.class, userName);
    }
    
    public boolean sameEmail(String email){
        if(em.createNamedQuery("User.findByEmailAddress") != null){
            return true;
        }
        return false;
    }
    
}
