/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.daoimpl;

import com.autosuport.dao.vehicledao;

import com.autosuport.modle.Vehicle;
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
public class vehicledaoimpl implements vehicledao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addVehicle(Vehicle vehicle) {
        sessionFactory.getCurrentSession().save(vehicle);
    }

    @Override
    public void deleteVehicle(Vehicle vehicle) {
        sessionFactory.getCurrentSession().delete(vehicle);
    }

    @Override
    public void updateVehicle(Vehicle vehicle) {
        sessionFactory.getCurrentSession().update(vehicle);
    }

    @Override
    public Vehicle findbyId(int vehicle) {
        return (Vehicle) sessionFactory.getCurrentSession().get(Vehicle.class, vehicle);
    }

    @Override
    public List<Vehicle> findallVehicle() {
        List<Vehicle> list = sessionFactory.getCurrentSession().createCriteria(Vehicle.class).list();

        return list;
    }

    @Override
    public List<Vehicle> findallVehiclebyname(String name) {

        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Vehicle.class);
        Criterion frist = Restrictions.ilike("refnumber", name + "%", MatchMode.ANYWHERE);
        Criterion last = Restrictions.ilike("vehicalnumber", name + "%", MatchMode.ANYWHERE);
        LogicalExpression orExp = Restrictions.or(frist, last);
        cr.add(orExp);

        List<Vehicle> result = cr.list();
        return result;

    }

    @Override
    public List<Vehicle> findbysuplireid(int id) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Vehicle.class);
        cr.add(Restrictions.eq("suplire.supid", id));
        List<Vehicle> result = cr.list();
        return result;
    }

    @Override
    public List<Vehicle> findbycustomerID(int id) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Vehicle.class);
        cr.add(Restrictions.eq("customer.cuid", id));
        List<Vehicle> result = cr.list();
        return result;
    }

    @Override
    public long vehiclecount() {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Vehicle.class);
        cr.setProjection(Projections.rowCount());
        Long resultCount = (Long) cr.uniqueResult();

        return resultCount;
    }

}
