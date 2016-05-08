/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.User;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

/**
 *
 * @author victor
 */
@Stateful
public class UserDAO {

    @PersistenceContext(unitName = "qwertyPU", type = PersistenceContextType.EXTENDED)
    private EntityManager em;

    public void addUser(User user) {
        em.persist(user);
    }

    public void editUser(User user) {
        em.merge(user);
    }

    public void deleteUser(User user) {
        em.remove(user);
    }

    public User getUser(String userName) {
        return em.find(User.class, userName);
    }

    public boolean sameEmail(String email) {
        return em.createNamedQuery("User.findByEmailAddress").getResultList().isEmpty();
    }

    public boolean loginOk(String username, String password) {

        Object u = em.find(User.class, username);

        if (u != null) {
            User user = (User) u;
            if (user.getPassword().equals(password)) {
                return true;
            }
        }
        return false;
    }

}
