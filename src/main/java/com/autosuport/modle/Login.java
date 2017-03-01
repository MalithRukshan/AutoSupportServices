package com.autosuport.modle;
// Generated Jan 16, 2016 11:17:57 AM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Login generated by hbm2java
 */
@Entity
@Table(name = "login", catalog = "autoservices"
)
public class Login implements java.io.Serializable {

    private Integer loginid;
    private int userid;
    private String username;
    private String loginRols;
    private String password;

    public Login() {
    }

    public Login(int userid, String username, String loginRols, String password) {
        this.userid = userid;
        this.username = username;
        this.loginRols = loginRols;
        this.password = password;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)

    @Column(name = "loginid", unique = true, nullable = false)
    public Integer getLoginid() {
        return this.loginid;
    }

    public void setLoginid(Integer loginid) {
        this.loginid = loginid;
    }

    @Column(name = "userid", nullable = false)
    public int getUserid() {
        return this.userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    @Column(name = "username", nullable = false, length = 225)
    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Column(name = "login_rols", nullable = false, length = 225)
    public String getLoginRols() {
        return this.loginRols;
    }

    public void setLoginRols(String loginRols) {
        this.loginRols = loginRols;
    }

    /**
     * @return the password
     */
    @Column(name = "password",   length = 225)
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

}
