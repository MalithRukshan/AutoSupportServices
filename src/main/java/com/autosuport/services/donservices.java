/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.services;

import com.autosuport.modle.Doneservices;
import com.autosuport.modle.Servicesprovider;
import com.autosuport.modle.idclass;
import java.util.List;
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
@Path("/donsevicesoparation")
@WebService(name = "employeeService", targetNamespace = "")
public interface donservices {

    @POST
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/addservicesprovider")
    public Response addDoneservices(Doneservices doneservices);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/findalldoneservices")
    public Response findAll();

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("findbyid/{id}")
    public Response findDoneservicesbyid(@PathParam("id") int id);

//    @GET
//    @Produces({MediaType.APPLICATION_JSON})
//    @Path("search/{query}")
//    public Response getsearchservics(@PathParam("query") String query);
    @DELETE
    @Path("delete/{id}")
    @Produces({MediaType.APPLICATION_JSON})
    public Response removeDoneservices(@PathParam("id") int id);

    @PUT
    @Path("/doneservicesuptate")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public Response updateDoneservices(Doneservices doneservices);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("findby_vehicle_id/{id}")
    public Response findDoneservicesbyvehicleid(@PathParam("id") int id);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("findbyservices_provider_id/{id}")
    public Response findDoneservicesbyS_p_byid(@PathParam("id") int id);

    @POST
    @Path("/deletall")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public Response deletall(List<idclass> array);

}
