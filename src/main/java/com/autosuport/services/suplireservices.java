/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.services;


import com.autosuport.modle.Suplire;
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
@Path("/suplireoparation")
@WebService(name = "employeeService", targetNamespace = "")
public interface suplireservices {
    
    @POST
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/addsuplire")
    public Response addcustermer(Suplire suplire);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/findallsuplire")
    public Response findAll();

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("findbyid/{id}")
    public Response findsuplirebyid(@PathParam("id") int id);

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("search/{query}")
    public Response getsuplirebyname(@PathParam("query") String query);

    @DELETE
    @Path("delete/{id}")
    @Produces({MediaType.APPLICATION_JSON})
    public Response removesuplire(@PathParam("id") int id);

    @PUT 
    @Path("/supplierupdate")
    @Consumes({ MediaType.APPLICATION_JSON})
    @Produces({ MediaType.APPLICATION_JSON})
    public Response updatesuplire(Suplire suplire);
      
}
