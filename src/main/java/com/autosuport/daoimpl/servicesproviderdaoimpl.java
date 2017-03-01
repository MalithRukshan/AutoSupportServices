/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.daoimpl;

import com.autosuport.dao.servicesprovidedao;
import com.autosuport.modle.Customer;
import com.autosuport.modle.Servicesprovider;
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
public class servicesproviderdaoimpl implements servicesprovidedao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addservicesprovider(Servicesprovider suplire) {
        sessionFactory.getCurrentSession().save(suplire);
    }

    @Override
    public void deleteServicesprovides(Servicesprovider suplire) {
        sessionFactory.getCurrentSession().delete(suplire);
    }

    @Override
    public void updateservicesproviders(Servicesprovider suplire) {
        sessionFactory.getCurrentSession().update(suplire);
    }

    @Override
    public Servicesprovider findbyId(int suplie) {
        return (Servicesprovider) sessionFactory.getCurrentSession().get(Servicesprovider.class, suplie);
    }

    @Override
    public List<Servicesprovider> findallservicesprovides() {
        List<Servicesprovider> list = sessionFactory.getCurrentSession().createCriteria(Servicesprovider.class).list();

        return list;
    }

    @Override
    public List<Servicesprovider> findallbyname(String name) {

        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Servicesprovider.class);

        Criterion frist = Restrictions.ilike("managername", name + "%", MatchMode.ANYWHERE);
        Criterion last = Restrictions.ilike("contacnumber", name + "%", MatchMode.ANYWHERE);
        Criterion contac = Restrictions.ilike("companyname", name + "%");
        Criterion email = Restrictions.ilike("managecontacnumber", name + "%");
        LogicalExpression orExp = Restrictions.or(frist, last);
        LogicalExpression orExp2 = Restrictions.or(contac, email);
        LogicalExpression orExp3 = Restrictions.or(orExp, orExp2);
        cr.add(orExp3);
        List<Servicesprovider> result = cr.list();

        return result;

    }

    @Override
    public List<Servicesprovider> findallservicesBycatagaryname(String catagary) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Servicesprovider.class);
        Criterion catagarylist = Restrictions.ilike("sevices_catagary", catagary + "%", MatchMode.ANYWHERE);
        cr.add(catagarylist);
        List<Servicesprovider> result = cr.list();
        return result;
    }

    @Override
    public long ServicesProvidercount() {
      Criteria cr = sessionFactory.getCurrentSession().createCriteria(Servicesprovider.class);
        cr.setProjection(Projections.rowCount());
        Long resultCount = (Long) cr.uniqueResult();

        return resultCount;
    }

    @Override
    public Servicesprovider findbycontacnumber(String contacnumber) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Servicesprovider.class);
        cr.add(Restrictions.eq("contacnumber", contacnumber));
        Servicesprovider result = (Servicesprovider) cr.uniqueResult();

        return result;
    }

}
