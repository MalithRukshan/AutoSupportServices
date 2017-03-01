/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.servicesimpl;

import com.autosuport.dao.donservicesDAO;
import com.autosuport.modle.Customer;
import com.autosuport.modle.Doneservices;
import com.autosuport.modle.idclass;
import com.autosuport.services.donservices;
import java.util.List;
import javax.ws.rs.core.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author malitha
 */
@Service
public class donserviceServicesimpl implements donservices {

    @Autowired
    private donservicesDAO doneservicesdaoImpl;

    @Transactional
    @Override
    public Response addDoneservices(Doneservices doneservices) {
        try {
            doneservicesdaoImpl.adddonservices(doneservices);
        } catch (Exception e) {
            System.out.println("eception");
        }
        return Response.status(Response.Status.CREATED).build();

    }

    @Transactional
    @Override
    public Response findAll() {
        return Response.ok(doneservicesdaoImpl.findalldoneservices()).build();
    }

    @Transactional
    @Override
    public Response findDoneservicesbyid(int id) {
        return Response.ok(doneservicesdaoImpl.findbyId(id)).build();
    }

    @Transactional
    @Override
    public Response removeDoneservices(int id) {
        try {
            Doneservices cus = doneservicesdaoImpl.findbyId(id);
            doneservicesdaoImpl.deletedonservices(cus);
        } catch (Exception e) {
            System.out.println("eception");
        }
        return Response.ok(Response.Status.CREATED).build();

    }

    @Transactional
    @Override
    public Response updateDoneservices(Doneservices doneservices) {
        try {
            doneservicesdaoImpl.updatedoneservices(doneservices);
        } catch (Exception e) {
            System.out.println("eception");
        }
        return Response.ok(Response.Status.CREATED).build();
    }

    @Transactional
    @Override
    public Response findDoneservicesbyvehicleid(int id) {
        return Response.ok(doneservicesdaoImpl.findallbyvehicleid(id)).build();
    }

    @Transactional
    @Override
    public Response findDoneservicesbyS_p_byid(int id) {
        return Response.ok(doneservicesdaoImpl.findallbyservic_provid(id)).build();
    }

    @Transactional
    @Override
    public Response deletall(List<idclass> array) {
        try {
            for (int i = 0; i < array.size(); i++) {
                doneservicesdaoImpl.deleteAll(array.get(i).getId());

            }
        } catch (Exception e) {
            System.out.println("eception");
        }
        return Response.ok(Response.Status.CREATED).build();
    }

}
