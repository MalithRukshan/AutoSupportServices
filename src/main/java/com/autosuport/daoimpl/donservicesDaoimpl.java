/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.daoimpl;

import com.autosuport.dao.donservicesDAO;
import com.autosuport.modle.Customer;
import com.autosuport.modle.Doneservices;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author malitha
 */
@Repository
public class donservicesDaoimpl implements donservicesDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void adddonservices(Doneservices doneservices) {
        sessionFactory.getCurrentSession().persist(doneservices);
    }

    @Override
    public void deletedonservices(Doneservices doneservices) {
        sessionFactory.getCurrentSession().delete(doneservices);
    }

    @Override
    public void updatedoneservices(Doneservices doneservices) {
        sessionFactory.getCurrentSession().update(doneservices);
    }

    @Override
    public Doneservices findbyId(int servicesproviderid) {
        return (Doneservices) sessionFactory.getCurrentSession().get(Doneservices.class, servicesproviderid);
    }

    @Override
    public List<Doneservices> findalldoneservices() {
        List<Doneservices> list = sessionFactory.getCurrentSession().createCriteria(Doneservices.class).list();

        return list;
    }

    @Override
    public List<Doneservices> findallbyname(String name) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Doneservices> findallbyvehicleid(int id) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Doneservices.class);
        cr.add(Restrictions.eq("vehicle.vid", id));
        List<Doneservices> result = cr.list();
        // return (Customer) sessionFactory.getCurrentSession().get(Customer.class, nic);
        return result;
    }

    @Override
    public List<Doneservices> findallbyservic_provid(int s_id) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Doneservices.class);
        cr.add(Restrictions.eq("servicesprovider.serid", s_id));
        List<Doneservices> result = cr.list();
        // return (Customer) sessionFactory.getCurrentSession().get(Customer.class, nic);
        return result;
    }

    @Override
    public void deleteAll(int id) {
        Query query = sessionFactory.getCurrentSession().createQuery("delete Doneservices where doneseid = :doneseid");
        query.setParameter("doneseid", id);
        query.executeUpdate();
    }

}
