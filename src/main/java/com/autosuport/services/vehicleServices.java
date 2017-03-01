/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.services;

import com.autosuport.modle.Vehicle;
import javax.jws.WebService;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 *
 * @author malitha
 */
@Path("/vehicleoparation")
@WebService(name = "employeeService", targetNamespace = "")
public interface vehicleServices {

    @POST
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/addvehile")
    public Response addvehicle(Vehicle vehicle);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/findallvehicle")
    public Response findAll();

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("findbyid/{id}")
    public Response findvehiclebyid(@PathParam("id") int id);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("search/{query}")
    public Response getvehiclebyname(@PathParam("query") String query);

    @DELETE
    @Path("delete/{id}")
    @Produces({MediaType.APPLICATION_JSON})
    public Response removevehicle(@PathParam("id") int id);

    @PUT
    @Path("/vehiclerupdate")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public Response updatevehicle(Vehicle suplire);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("findbysuplireidid/{id}")
    public Response findvehiclebysuplireidid(@PathParam("id") int id);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("findbycusid/{id}")
    public Response findvehiclebycusid(@PathParam("id") int id);

}
