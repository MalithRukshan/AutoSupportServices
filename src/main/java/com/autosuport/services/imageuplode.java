package com.autosuport.services;

import javax.jws.WebService;

import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.Path;
import org.apache.cxf.jaxrs.ext.multipart.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;

@Path("/fileservice")
@WebService(name = "employeeService", targetNamespace = "")
public interface imageuplode {

//    // http://localhost:8080/ApacheCXF-UP-DOWN-Text-File/services/fileservice/download/text
//    @GET
//    @Path("/download/text")
//    @Produces(MediaType.TEXT_PLAIN)
//    public Response downloadTextFile();
// 
    // http://localhost:8080/ApacheCXF-UP-DOWN-Text-File/services/fileservice/upload/text
    @POST
    @Path("/uploadcustomerimage")
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response uploadTextFile(@Multipart("note") String note,
            @Multipart("upfile") Attachment attachment, @Context HttpServletRequest request);
    
    @POST
    @Path("/uploadAuth_customerimage")
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response uploadimage(@Multipart("note") String note,
            @Multipart("upfile") Attachment attachment, @Context HttpServletRequest request);

    @POST
    @Path("/uploadsuplireimage")
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response uploadTextFilesuplire(@Multipart("note") String note,
            @Multipart("upfile") Attachment attachment, @Context HttpServletRequest request);
    
    @POST
    @Path("/uploadAuth_suplireimage")
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response uploadimagesuplire(@Multipart("note") String note,
            @Multipart("upfile") Attachment attachment, @Context HttpServletRequest request);
    
    

    @POST
    @Path("/uploadvehicleimage")
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response uploadTextFilevehicle(@Multipart("note") String note,
            @Multipart("upfile") Attachment attachment, @Context HttpServletRequest request);

    @POST
    @Path("/uploadservicesprovider")
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response uploadTextFileservicesprovider(@Multipart("note") String note,
            @Multipart("upfile") Attachment attachment, @Context HttpServletRequest request);
    
    @POST
    @Path("/uploadAuth_servicesprovider")
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response uploadimageservicesprovider(@Multipart("note") String note,
            @Multipart("upfile") Attachment attachment, @Context HttpServletRequest request);
    
    

    @POST
    @Path("/uploadaddvertiesment")
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response uploadTextFileaddvretiesment(
            @Multipart("upfile") Attachment attachment, @Context HttpServletRequest request);

    @POST
    @Path("/uploadtermAndPolicies")
    @Produces(MediaType.TEXT_HTML)
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response uploadTerm_and_policies(
            @Multipart("upfile") Attachment attachment, @Context HttpServletRequest request);

}
