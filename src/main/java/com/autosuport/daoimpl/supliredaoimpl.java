/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.daoimpl;

import com.autosuport.dao.supliredao;
import com.autosuport.modle.Suplire;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author malitha
 */
@Repository
public class supliredaoimpl implements supliredao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addSuplire(Suplire suplire) {
        sessionFactory.getCurrentSession().save(suplire);
    }

    @Override
    public void deleteSuplire(Suplire suplire) {
        sessionFactory.getCurrentSession().delete(suplire);
    }

    @Override
    public void updatesuplire(Suplire suplire) {
        sessionFactory.getCurrentSession().update(suplire);
    }

    @Override
    public Suplire findbyId(int suplie) {
        return (Suplire) sessionFactory.getCurrentSession().get(Suplire.class, suplie);
    }

    @Override
    public List<Suplire> findallsuplire() {
        List<Suplire> list = sessionFactory.getCurrentSession().createCriteria(Suplire.class).list();

        return list;
    }

    @Override
    public List<Suplire> findallsuplirebyname(String name) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Suplire.class);
        Criterion refernumber = Restrictions.ilike("companyname", name + "%", MatchMode.ANYWHERE);
        Criterion vehiclemodle = Restrictions.ilike("contacnumber", name + "%", MatchMode.ANYWHERE);
        LogicalExpression orExp = Restrictions.or(refernumber, vehiclemodle);
        cr.add(orExp);

        List<Suplire> result = cr.list();
        return result;
    }

    @Override
    public long suplirecount() {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Suplire.class);
        cr.setProjection(Projections.rowCount());
        Long resultCount = (Long) cr.uniqueResult();
        return resultCount;
    }

    @Override
    public Suplire findbycontacnumber(String contacnumber) {
        
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Suplire.class);
        cr.add(Restrictions.eq("contacnumber", contacnumber));
        Suplire result = (Suplire) cr.uniqueResult();

        return result;
        
    }

}
