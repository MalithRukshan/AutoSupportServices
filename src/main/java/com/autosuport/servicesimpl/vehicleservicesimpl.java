/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.servicesimpl;

import com.autosuport.dao.vehicledao;
import com.autosuport.modle.Vehicle;
import com.autosuport.services.vehicleServices;
import javax.ws.rs.core.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author malitha
 */
@Service
public class vehicleservicesimpl implements vehicleServices {

    @Autowired
    private vehicledao vehicledaoImpl;

    @Transactional
    @Override
    public Response addvehicle(Vehicle vehicle) {
        try {
            vehicledaoImpl.addVehicle(vehicle);
        } catch (Exception e) {

        }
        return Response.status(Response.Status.CREATED).build();
    }

    @Transactional
    @Override
    public Response findAll() {
        return Response.ok(vehicledaoImpl.findallVehicle()).build();
    }

    @Transactional
    @Override
    public Response findvehiclebyid(int id) {
        return Response.ok(vehicledaoImpl.findbyId(id)).build();
    }

    @Transactional
    @Override
    public Response getvehiclebyname(String query) {
        return Response.ok(vehicledaoImpl.findallVehiclebyname(query)).build();
    }

    @Transactional
    @Override
    public Response removevehicle(int id) {
        try {
            Vehicle vecle = vehicledaoImpl.findbyId(id);
            vehicledaoImpl.deleteVehicle(vecle);
        } catch (Exception e) {

        }
        return Response.ok(Response.Status.CREATED).build();
    }

    @Transactional
    @Override
    public Response updatevehicle(Vehicle veh) {
        try {
//        Vehicle vecle = vehicledaoImpl.findbyId(veh.getVid());
//        veh.setImage(vecle.getImage());
//        vecle=veh;
            vehicledaoImpl.updateVehicle(veh);
        } catch (Exception e) {

        }
        return Response.ok(Response.Status.CREATED).build();
    }

    @Transactional
    @Override
    public Response findvehiclebysuplireidid(int id) {
        return Response.ok(vehicledaoImpl.findbysuplireid(id)).build();
    }

    @Transactional
    @Override
    public Response findvehiclebycusid(int id) {
        return Response.ok(vehicledaoImpl.findbycustomerID(id)).build();
    }

}
