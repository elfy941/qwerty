/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author victor
 */
@Entity
@Table(name = "APLIANCES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Apliances.findAll", query = "SELECT a FROM Apliances a"),
    @NamedQuery(name = "Apliances.findById", query = "SELECT a FROM Apliances a WHERE a.id = :id"),
    @NamedQuery(name = "Apliances.findByUserName", query = "SELECT a FROM Apliances a WHERE a.userName = :userName"),
    @NamedQuery(name = "Apliances.findByCvId", query = "SELECT a FROM Apliances a WHERE a.cvId = :cvId"),
    @NamedQuery(name = "Apliances.findByJobId", query = "SELECT a FROM Apliances a WHERE a.jobId = :jobId")})
public class Apliances implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "userName")
    private String userName;
    @Size(max = 45)
    @Column(name = "cvId")
    private String cvId;
    @Size(max = 45)
    @Column(name = "jobId")
    private String jobId;

    public Apliances() {
    }

    public Apliances(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCvId() {
        return cvId;
    }

    public void setCvId(String cvId) {
        this.cvId = cvId;
    }

    public String getJobId() {
        return jobId;
    }

    public void setJobId(String jobId) {
        this.jobId = jobId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Apliances)) {
            return false;
        }
        Apliances other = (Apliances) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Apliances[ id=" + id + " ]";
    }
    
}
