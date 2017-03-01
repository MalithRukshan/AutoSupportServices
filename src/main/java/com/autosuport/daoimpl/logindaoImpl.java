/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.daoimpl;

import com.autosuport.dao.logindao;
import com.autosuport.modle.Customer;
import com.autosuport.modle.Login;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author malitha
 */
@Repository
public class logindaoImpl implements logindao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addloginuser(Login login) {
        sessionFactory.getCurrentSession().save(login);
    }

    @Override
    public Login checkusernamepassword(String username, String password) {
        int returnid;
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Login.class);
        Criterion usernam = Restrictions.eq("username", username);
        Criterion passw = Restrictions.eq("password", password);
        LogicalExpression andExp = Restrictions.and(usernam, passw);
        cr.add(andExp);
        Login result = (Login) cr.uniqueResult();

        return result;

    }

}
