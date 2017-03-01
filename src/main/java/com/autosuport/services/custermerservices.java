/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.services;

import com.autosuport.modle.Customer;
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
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 *
 * @author malitha
 */
@Path("/custrmaroparation")
@WebService(name = "employeeService", targetNamespace = "")
public interface custermerservices {

    @POST
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/addcustermer")
    public Response addcustermer(Customer customer);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/findallcustermer")
    public Response findAll();

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("findbyid/{id}")
    public Response findcustomerbyid(@PathParam("id") int id);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("search/{query}")
    public Response getcustermerbyname(@PathParam("query") String query);

    @DELETE
    @Path("delete/{id}")
    @Produces({MediaType.APPLICATION_JSON})
    public Response removeCustomer(@PathParam("id") int id);

    @PUT
    @Path("/customerupdate")
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    public Response updatecustomer(Customer customer);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("findnic/{query}")
    public Response getcustomerbyNic(@PathParam("query") String query);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("findaddress/{query}")
    public Response getcustomerbyaddress(@PathParam("query") String query);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("cus_count")
    public Response getrowcount();

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("cus_date")
    public Response getdaterowcount();
}
