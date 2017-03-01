/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.daoimpl;

import com.autosuport.dao.custermerDao;
import com.autosuport.modle.Customer;
import com.autosuport.modle.Vehicle;
import java.util.Date;
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
public class costermerDaoImpl implements custermerDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addCustermer(Customer customer) {
        sessionFactory.getCurrentSession().save(customer);
    }

    @Override
    public void deleteCustomer(Customer customerid) {
        // Customer cus=findbyId(customerid);
        sessionFactory.getCurrentSession().delete(customerid);
    }

    @Override
    public void updateCustermar(Customer customer) {
        sessionFactory.getCurrentSession().update(customer);
    }

    @Override
    public Customer findbyId(int customerid) {

        return (Customer) sessionFactory.getCurrentSession().get(Customer.class, customerid);

    }

    @Override
    public List<Customer> findallcustomer() {
        // return sessionFactory.getCurrentSession().createSQLQuery("select * from CUSTOMER").list();
//   List<Customer> list= sessionFactory.getCurrentSession().createCriteria(Customer.class).list();
        //  return (List<Customer>)sessionFactory.getCurrentSession().get(Customer.class,;
        List<Customer> list = sessionFactory.getCurrentSession().createCriteria(Customer.class).list();

        return list;
    }

    @Override
    public List<Customer> findallcustomerbyname(String name) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Customer.class);

        Criterion frist = Restrictions.ilike("nic", name + "%", MatchMode.ANYWHERE);
        Criterion last = Restrictions.ilike("fristname", name + "%", MatchMode.ANYWHERE);
        Criterion contac = Restrictions.ilike("contacnumber", name + "%");
        Criterion email = Restrictions.ilike("email", name + "%");
        LogicalExpression orExp = Restrictions.or(frist, last);
        LogicalExpression orExp2 = Restrictions.or(contac, email);
        LogicalExpression orExp3 = Restrictions.or(orExp, orExp2);
        cr.add(orExp3);
        //  cr.add(Restrictions.or(contac, email));
        // cr.add(orExp2);
        List<Customer> result = cr.list();
        // List<Customer> result=sessionFactory.getCurrentSession().createCriteria(Customer.class).add(Restrictions.eq("EMPLTEAM", "teamxxx").list();
        // List<Customer> result = sessionFactory.getCurrentSession().createCriteria(Customer.class).add(Restrictions.like("fristname", name)).list();

        return result;
    }

    @Override
    public Customer findCustomerByNIC(String nic) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Customer.class);
        cr.add(Restrictions.eq("nic", nic));
        Customer result = (Customer) cr.uniqueResult();
        // return (Customer) sessionFactory.getCurrentSession().get(Customer.class, nic);
        return result;
    }

    @Override
    public List<Customer> findallcustomerbyaddress(String address) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Customer.class);

        Criterion laddress = Restrictions.ilike("laddress", address + "%", MatchMode.ANYWHERE);
        Criterion paddress = Restrictions.ilike("paddress", address + "%", MatchMode.ANYWHERE);

        LogicalExpression orExp = Restrictions.or(laddress, paddress);

        cr.add(orExp);

        List<Customer> result = cr.list();

        return result;

    }

    @Override
    public long Customercount() {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Customer.class);
        cr.setProjection(Projections.rowCount());
        Long resultCount = (Long) cr.uniqueResult();

        return resultCount;
    }

    @Override
    public Long Customerofdatecount(Date date) {
        System.out.println(date);
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Customer.class);
        cr.add(Restrictions.gt("regesterdate", date));
        cr.setProjection(Projections.rowCount());
        // cr.add(Restrictions.isNotNull("birthDate"));

        return (Long) cr.uniqueResult();

    }

}
