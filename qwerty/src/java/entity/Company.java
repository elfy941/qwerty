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
import javax.persistence.Lob;
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
@Table(name = "COMPANY")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Company.findAll", query = "SELECT c FROM Company c"),
    @NamedQuery(name = "Company.findByCompanyName", query = "SELECT c FROM Company c WHERE c.companyName = :companyName"),
    @NamedQuery(name = "Company.findByUserName", query = "SELECT c FROM Company c WHERE c.userName = :userName"),
    @NamedQuery(name = "Company.findByEmailAddress", query = "SELECT c FROM Company c WHERE c.emailAddress = :emailAddress"),
    @NamedQuery(name = "Company.findByPhoneNumber", query = "SELECT c FROM Company c WHERE c.phoneNumber = :phoneNumber"),
    @NamedQuery(name = "Company.findByPassword", query = "SELECT c FROM Company c WHERE c.password = :password"),
    @NamedQuery(name = "Company.findByImage", query = "SELECT c FROM Company c WHERE c.image = :image")})
public class Company implements Serializable {

    private static final long serialVersionUID = 1L;
    @Size(max = 45)
    @Column(name = "CompanyName")
    private String companyName;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "UserName")
    private String userName;
    @Size(max = 45)
    @Column(name = "EmailAddress")
    private String emailAddress;
    @Size(max = 45)
    @Column(name = "PhoneNumber")
    private String phoneNumber;
    @Size(max = 45)
    @Column(name = "Password")
    private String password;
    @Size(max = 45)
    @Column(name = "image")
    private String image;
    @Lob
    @Size(max = 2147483647)
    @Column(name = "Description")
    private String description;

    public Company() {
    }

    public Company(String userName) {
        this.userName = userName;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (userName != null ? userName.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Company)) {
            return false;
        }
        Company other = (Company) object;
        if ((this.userName == null && other.userName != null) || (this.userName != null && !this.userName.equals(other.userName))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Company[ userName=" + userName + " ]";
    }
    
}
