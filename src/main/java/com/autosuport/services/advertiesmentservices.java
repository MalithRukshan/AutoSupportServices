/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.services;

import javax.jws.WebService;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 *
 * @author Damith Nuwan Sampath
 */
@Path("/advertiesmentOparation")
@WebService(name = "employeeService", targetNamespace = "")
public interface advertiesmentservices {

    @GET
    @Produces({MediaType.APPLICATION_JSON})
    @Path("/getallAdvertiesImage")
    public Response findAll();

}
