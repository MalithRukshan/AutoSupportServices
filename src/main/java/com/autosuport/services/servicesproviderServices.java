/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.services;

import com.autosuport.modle.Servicesprovider;
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
import org.springframework.stereotype.Service;

/**
 *
 * @author malitha
 */
@Path("/servicesprovideroparation")
@WebService(name = "employeeService", targetNamespace = "")
public interface servicesproviderServices {

    @POST
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/addservicesprovider")
    public Response addServicesprovider(Servicesprovider servicesprovider);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/findallServicesprovider")
    public Response findAll();

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("findbyid/{id}")
    public Response findServicesproviderbyid(@PathParam("id") int id);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("search/{query}")
    public Response getServicesproviderbyname(@PathParam("query") String query);

    @DELETE
    @Path("delete/{id}")
    @Produces({MediaType.APPLICATION_JSON})
    public Response removeServicesprovider(@PathParam("id") int id);

    @PUT
    @Path("/Servicesproviderupdate")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public Response updateServicesprovider(Servicesprovider servicesprovider);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("searchbycatagary/{query}")
    public Response getServicesproviderbycatagary(@PathParam("query") String query);

}
