/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.servicesimpl;

import com.autosuport.dao.advertismentdao;
import com.autosuport.dao.custermerDao;
import com.autosuport.dao.servicesprovidedao;
import com.autosuport.dao.supliredao;
import com.autosuport.dao.vehicledao;
import com.autosuport.modle.Advetiesmet;
import com.autosuport.modle.Customer;
import com.autosuport.modle.Servicesprovider;
import com.autosuport.modle.Suplire;
import com.autosuport.modle.Vehicle;
import com.autosuport.services.imageuplode;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.activation.DataHandler;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author malitha
 */
@Service
public class imageuplodeservicesimpl implements imageuplode {

    public static final String UPLOAD_FILE_SERVER = "http://autosupportservices.elasticbeanstalk.com/AutosupportServices-1.0.3-SNAPSHOT/imageuplode/";
    public static final String UPLOAD_FILE_SERVERtem = "../imageuplode/";
    public static final String UPLOAD_FILE_SERVERtAd = "imageuplode/";
    @Autowired
    private custermerDao customerdaoImpl;

    @Autowired
    private servicesprovidedao servicessupliredaoImpl;

    @Autowired
    private supliredao supliredaoImpl;

    @Autowired
    private vehicledao vehicledaoImpl;

    @Autowired
    private advertismentdao advertiesdaoImpl;
    
    

    @Transactional
    @Override
    public Response uploadTextFile(String note, Attachment attachment, HttpServletRequest request) {
        // System.out.println("cutomer" + note);

        int customerid = Integer.parseInt(note);
        String fileName = null;
        int customerID = 0;
        // for (Attachment attachment : attachments) {
        DataHandler dataHandler = attachment.getDataHandler();
        try {
            // get filename to be uploaded
            MultivaluedMap<String, String> multivaluedMap = attachment.getHeaders();

            fileName = getFileName(multivaluedMap);
            if (fileName != "") {
                Customer customer = customerdaoImpl.findbyId(customerid);
                customerID = customer.getCuid();
                String filenamenew = fileName;
                // String[] parts = filenamenew.split(".");

                //String imageFormat = parts[1];
                String imagenamefile = "cus_image-" + customerID + "." + getFormat(fileName);
                String imagename = UPLOAD_FILE_SERVERtem + imagenamefile;

                // write & upload file to server
                InputStream inputStream = dataHandler.getInputStream();
                writeToFileServer(inputStream, imagenamefile);

                customer.setImage(imagename);
                customerdaoImpl.updateCustermar(customer);
            } else {

            }
        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
            // release resources, if any
        }
        //  }

        java.net.URI location = null;
        try {
            try {
                Thread.sleep(3000);
            } catch (InterruptedException ex) {
                //ToCatchOrNot
            }
            location = new java.net.URI("../../AdminPanel/customer-profile.jsp?id=" + customerID);
        } catch (URISyntaxException ex) {
            Logger.getLogger(imageuplodeservicesimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        // return Response.ok("upload success"+fileName).build();
        return Response.temporaryRedirect(location).build();
    }

    /**
     *
     * @param inputStream
     * @param fileName
     */
    private void writeToFileServer(InputStream inputStream, String fileName) {

        OutputStream outputStream = null;
        try {
            outputStream = new FileOutputStream(new File(UPLOAD_FILE_SERVER + fileName));
            int read = 0;
            byte[] bytes = new byte[1024];
            while ((read = inputStream.read(bytes)) != -1) {
                outputStream.write(bytes, 0, read);
            }
            outputStream.flush();
            outputStream.close();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } finally {
            //release resource, if any
        }
    }

    /**
     *
     * @param multivaluedMap
     * @return
     */
    private String getFileName(MultivaluedMap<String, String> multivaluedMap) {
        try {
            String[] contentDisposition = multivaluedMap.getFirst("Content-Disposition").split(";");
            for (String filename : contentDisposition) {

                if ((filename.trim().startsWith("filename"))) {
                    String[] name = filename.split("=");
                    String exactFileName = name[1].trim().replaceAll("\"", "");
                    return exactFileName;
                }
            }
        } catch (Exception e) {

        }
        return "unknownFile";
    }

//    @Override
//    public Response uploadTextFile(String note, Attachment attachment, HttpServletRequest request) {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
    @Transactional
    @Override
    public Response uploadTextFilesuplire(String note, Attachment attachment, HttpServletRequest request) {
        int suplireid = Integer.parseInt(note);
        String fileName = null;
        int supliresid = 0;
        // for (Attachment attachment : attachments) {
        DataHandler dataHandler = attachment.getDataHandler();
        try {
            // get filename to be uploaded
            MultivaluedMap<String, String> multivaluedMap = attachment.getHeaders();
            fileName = getFileName(multivaluedMap);
            Suplire suplire = supliredaoImpl.findbyId(suplireid);
            supliresid = suplire.getSupid();
            String filenamenew = fileName;
            // String[] parts = filenamenew.split(".");

            //String imageFormat = parts[1];
            String imagenamefile = "sup_profile-" + supliresid + "." + getFormat(fileName);
            String imagename = UPLOAD_FILE_SERVERtem + imagenamefile;

            // write & upload file to server
            InputStream inputStream = dataHandler.getInputStream();
            writeToFileServer(inputStream, imagenamefile);

            suplire.setImage(imagename);
            supliredaoImpl.updatesuplire(suplire);

        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
            // release resources, if any
        }
        //  }

        java.net.URI location = null;
        try {
            try {
                Thread.sleep(3000);
            } catch (InterruptedException ex) {
                //ToCatchOrNot
            }
            location = new java.net.URI("../../AdminPanel/suplliers_profile.jsp?id=" + supliresid);
        } catch (URISyntaxException ex) {
            Logger.getLogger(imageuplodeservicesimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        // return Response.ok("upload success"+fileName).build();
        return Response.temporaryRedirect(location).build();
    }

    @Transactional
    @Override
    public Response uploadTextFilevehicle(String note, Attachment attachment, HttpServletRequest request) {
        int vehicleidfrom = Integer.parseInt(note);
        String fileName = null;
        int vehicleid = 0;
        // for (Attachment attachment : attachments) {
        DataHandler dataHandler = attachment.getDataHandler();
        try {
            // get filename to be uploaded
            MultivaluedMap<String, String> multivaluedMap = attachment.getHeaders();
            fileName = getFileName(multivaluedMap);
            Vehicle vehicle = vehicledaoImpl.findbyId(vehicleidfrom);
            vehicleid = vehicle.getVid();
            String filenamenew = fileName;
            // String[] parts = filenamenew.split(".");

            //String imageFormat = parts[1];
            String imagenamefile = "veh_profile-" + vehicleid + "." + getFormat(fileName);
            String imagename = UPLOAD_FILE_SERVERtem + imagenamefile;

            // write & upload file to server
            InputStream inputStream = dataHandler.getInputStream();
            writeToFileServer(inputStream, imagenamefile);

            vehicle.setImage(imagename);
            vehicledaoImpl.updateVehicle(vehicle);

        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
            // release resources, if any
        }
        //  }

        java.net.URI location = null;
        try {
            try {
                Thread.sleep(3000);
            } catch (InterruptedException ex) {
                //ToCatchOrNot
            }
            location = new java.net.URI("vehicle-profile.jsp?id=" + vehicleid);
        } catch (URISyntaxException ex) {
            Logger.getLogger(imageuplodeservicesimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        // return Response.ok("upload success"+fileName).build();
        return Response.temporaryRedirect(location).build();
    }

    @Transactional
    @Override
    public Response uploadTextFileservicesprovider(String note, Attachment attachment, HttpServletRequest request) {
        int sproviderid = Integer.parseInt(note);
        String fileName = null;
        int suplireeid = 0;
        // for (Attachment attachment : attachments) {
        DataHandler dataHandler = attachment.getDataHandler();
        try {
            // get filename to be uploaded
            MultivaluedMap<String, String> multivaluedMap = attachment.getHeaders();
            fileName = getFileName(multivaluedMap);
            Servicesprovider servicespro = servicessupliredaoImpl.findbyId(sproviderid);
            suplireeid = servicespro.getSerid();
            String filenamenew = fileName;
            // String[] parts = filenamenew.split(".");

            //String imageFormat = parts[1];
            String imagenamefile = "servisespro_profile-" + suplireeid + "." + getFormat(fileName);
            String imagename = UPLOAD_FILE_SERVERtem + imagenamefile;

            // write & upload file to server
            InputStream inputStream = dataHandler.getInputStream();
            writeToFileServer(inputStream, imagenamefile);

            servicespro.setImage(imagename);
            servicessupliredaoImpl.updateservicesproviders(servicespro);

        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
            // release resources, if any
        }
        //  }

        java.net.URI location = null;
        try {
            try {
                Thread.sleep(3000);
            } catch (InterruptedException ex) {
                //ToCatchOrNot
            }
            location = new java.net.URI("../../AdminPanel/servicesprovider_profile.jsp?id=" + suplireeid);
        } catch (URISyntaxException ex) {
            Logger.getLogger(imageuplodeservicesimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        // return Response.ok("upload success"+fileName).build();
        return Response.temporaryRedirect(location).build();
    }

    @Transactional
    @Override
    public Response uploadTextFileaddvretiesment(Attachment attachment, HttpServletRequest request) {
        // String addvertiesid = note;
        String fileName = null;
        int suplireeid = 0;
        // for (Attachment attachment : attachments) {
        DataHandler dataHandler = attachment.getDataHandler();
        try {
            // get filename to be uploaded
            MultivaluedMap<String, String> multivaluedMap = attachment.getHeaders();
            fileName = getFileName(multivaluedMap);
            Advetiesmet addimage = new Advetiesmet();
            String filenamenew = fileName;
            // String[] parts = filenamenew.split(".");

            //String imageFormat = parts[1];
            Random r = new Random();
            int x = r.nextInt(9999);
            String imagenamefile = "adverties_profile-" + x + "." + getFormat(fileName);
            String imagename = UPLOAD_FILE_SERVERtAd + imagenamefile;

            // write & upload file to server
            InputStream inputStream = dataHandler.getInputStream();
            writeToFileServer(inputStream, imagenamefile);
            addimage.setImagead(imagename);
            advertiesdaoImpl.addimage(addimage);

        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
            // release resources, if any
        }
        //  }

        java.net.URI location = null;
        try {
            try {
                Thread.sleep(2000);
            } catch (InterruptedException ex) {
                //ToCatchOrNot
            }
            location = new java.net.URI("../../AdminPanel/advertisement.jsp");
        } catch (URISyntaxException ex) {
            Logger.getLogger(imageuplodeservicesimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        // return Response.ok("upload success"+fileName).build();
        return Response.temporaryRedirect(location).build();
    }

    public String getFormat(String imageName) {
        try {
            String temp = new String(imageName);
            String tempImageName = temp.toLowerCase();

            if (tempImageName.endsWith(".png")) {
                return "png";
            } else if (temp.endsWith(".jpg")) {
                return "jpg";
            } else if (temp.endsWith(".jpeg")) {
                return "jpeg";
            } else if (temp.endsWith(".gif")) {
                return "gif";
            } else if (temp.endsWith(".tiff")) {
                return "tiff";
            } else if (temp.endsWith(".pdf")) {
                return "pdf";
            }
        } catch (Exception e) {

        }

        return "png";
    }

    @Transactional
    @Override
    public Response uploadTerm_and_policies(Attachment attachment, HttpServletRequest request) {
        // String addvertiesid = note;
        String fileName = null;
        int suplireeid = 0;
        // for (Attachment attachment : attachments) {
        DataHandler dataHandler = attachment.getDataHandler();
        try {
            // get filename to be uploaded
            MultivaluedMap<String, String> multivaluedMap = attachment.getHeaders();
            fileName = getFileName(multivaluedMap);
            String imagenamefile = "term" + getFormat(fileName);
            String imagename = UPLOAD_FILE_SERVERtAd + imagenamefile;

            // write & upload file to server
            InputStream inputStream = dataHandler.getInputStream();
            writeToFileServer(inputStream, imagenamefile);

        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
            // release resources, if any
        }
        //  }

        java.net.URI location = null;
        try {
            try {
                Thread.sleep(2000);
            } catch (InterruptedException ex) {
                //ToCatchOrNot
            }
            location = new java.net.URI("../../AdminPanel/advertisement.jsp");
        } catch (URISyntaxException ex) {
            Logger.getLogger(imageuplodeservicesimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        // return Response.ok("upload success"+fileName).build();
        return Response.temporaryRedirect(location).build();
    }

    @Transactional
    @Override
    public Response uploadimage(String note, Attachment attachment, HttpServletRequest request) {
        int customerid = Integer.parseInt(note);
        String fileName = null;
        int customerID = 0;
        // for (Attachment attachment : attachments) {
        DataHandler dataHandler = attachment.getDataHandler();
        try {
            // get filename to be uploaded
            MultivaluedMap<String, String> multivaluedMap = attachment.getHeaders();

            fileName = getFileName(multivaluedMap);
            if (fileName != "") {
                Customer customer = customerdaoImpl.findbyId(customerid);
                customerID = customer.getCuid();
                String filenamenew = fileName;
                // String[] parts = filenamenew.split(".");

                //String imageFormat = parts[1];
                String imagenamefile = "cus_image-" + customerID + "." + getFormat(fileName);
                String imagename = UPLOAD_FILE_SERVERtem + imagenamefile;

                // write & upload file to server
                InputStream inputStream = dataHandler.getInputStream();
                writeToFileServer(inputStream, imagenamefile);

                customer.setImage(imagename);
                customerdaoImpl.updateCustermar(customer);
            } else {

            }
        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
            // release resources, if any
        }
        //  }

        java.net.URI location = null;
        try {
            try {
                Thread.sleep(3000);
            } catch (InterruptedException ex) {
                //ToCatchOrNot
            }
            location = new java.net.URI("../../AdminPanel/auth-customer-profile.jsp?cusid=" + customerID);//customerAuthrices profile url 
        } catch (URISyntaxException ex) {
            Logger.getLogger(imageuplodeservicesimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        // return Response.ok("upload success"+fileName).build();
        return Response.temporaryRedirect(location).build();
    }

    @Transactional
    @Override
    public Response uploadimagesuplire(String note, Attachment attachment, HttpServletRequest request) {
        int suplireid = Integer.parseInt(note);
        String fileName = null;
        int supliresid = 0;
        // for (Attachment attachment : attachments) {
        DataHandler dataHandler = attachment.getDataHandler();
        try {
            // get filename to be uploaded
            MultivaluedMap<String, String> multivaluedMap = attachment.getHeaders();
            fileName = getFileName(multivaluedMap);
            Suplire suplire = supliredaoImpl.findbyId(suplireid);
            supliresid = suplire.getSupid();
            String filenamenew = fileName;
            // String[] parts = filenamenew.split(".");

            //String imageFormat = parts[1];
            String imagenamefile = "sup_profile-" + supliresid + "." + getFormat(fileName);
            String imagename = UPLOAD_FILE_SERVERtem + imagenamefile;

            // write & upload file to server
            InputStream inputStream = dataHandler.getInputStream();
            writeToFileServer(inputStream, imagenamefile);

            suplire.setImage(imagename);
            supliredaoImpl.updatesuplire(suplire);

        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
            // release resources, if any
        }
        //  }

        java.net.URI location = null;
        try {
            try {
                Thread.sleep(3000);
            } catch (InterruptedException ex) {
                //ToCatchOrNot
            }
            location = new java.net.URI("../../AdminPanel/auth-supplier-profile.jsp?supid=" + supliresid);//suplireAuthrices profile url
        } catch (URISyntaxException ex) {
            Logger.getLogger(imageuplodeservicesimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        // return Response.ok("upload success"+fileName).build();
        return Response.temporaryRedirect(location).build();
    }

    @Transactional
    @Override
    public Response uploadimageservicesprovider(String note, Attachment attachment, HttpServletRequest request) {
        int sproviderid = Integer.parseInt(note);
        String fileName = null;
        int suplireeid = 0;
        // for (Attachment attachment : attachments) {
        DataHandler dataHandler = attachment.getDataHandler();
        try {
            // get filename to be uploaded
            MultivaluedMap<String, String> multivaluedMap = attachment.getHeaders();
            fileName = getFileName(multivaluedMap);
            Servicesprovider servicespro = servicessupliredaoImpl.findbyId(sproviderid);
            suplireeid = servicespro.getSerid();
            String filenamenew = fileName;
            // String[] parts = filenamenew.split(".");

            //String imageFormat = parts[1];
            String imagenamefile = "servisespro_profile-" + suplireeid + "." + getFormat(fileName);
            String imagename = UPLOAD_FILE_SERVERtem + imagenamefile;

            // write & upload file to server
            InputStream inputStream = dataHandler.getInputStream();
            writeToFileServer(inputStream, imagenamefile);

            servicespro.setImage(imagename);
            servicessupliredaoImpl.updateservicesproviders(servicespro);

        } catch (Exception ex) {
            ex.printStackTrace();

        } finally {
            // release resources, if any
        }
        //  }

        java.net.URI location = null;
        try {
            try {
                Thread.sleep(3000);
            } catch (InterruptedException ex) {
                //ToCatchOrNot
            }
            location = new java.net.URI("../../AdminPanel/auth-serviceprovider-profile.jsp?id=" + suplireeid);//servicesproviderAuthrices profile 
        } catch (URISyntaxException ex) {
            Logger.getLogger(imageuplodeservicesimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        // return Response.ok("upload success"+fileName).build();
        return Response.temporaryRedirect(location).build();
    }

}
