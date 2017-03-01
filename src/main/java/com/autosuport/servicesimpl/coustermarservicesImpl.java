/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.servicesimpl;

import com.autosuport.dao.custermerDao;
import com.autosuport.dao.logindao;
import com.autosuport.dao.servicesprovidedao;
import com.autosuport.dao.supliredao;
import com.autosuport.dao.vehicledao;
import com.autosuport.modle.Customer;
import com.autosuport.modle.Login;
import com.autosuport.services.custermerservices;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.ws.rs.core.Response;
import org.eclipse.jetty.util.log.Log;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author malitha
 */
@Service
public class coustermarservicesImpl implements custermerservices {

    @Autowired
    private custermerDao customerdaoImpl;

    @Autowired
    private servicesprovidedao servicessupliredaoImpl;

    @Autowired
    private vehicledao vehicledaoImpl;

    @Autowired
    private supliredao supliredaoImpl;

    @Autowired
    private logindao logindaoImpl;

    @Autowired
    private MailSender crunchifymail;

    @Transactional
    @Override
    public Response addcustermer(Customer customer) {
        try {
            customerdaoImpl.addCustermer(customer);

            Customer custo = customerdaoImpl.findCustomerByNIC(customer.getNic());

            Login log = new Login();
            log.setLoginRols("C_customer");
            Random random = new Random();
            int x = random.nextInt(9000) + 1000;
            String username = "customer" + x;
            log.setUsername(username);
            String password = passwordgenarter.getSaltString();

            log.setPassword(password);

            log.setUserid(custo.getCuid());

            logindaoImpl.addloginuser(log);

            SimpleMailMessage crunchifyMsg = new SimpleMailMessage();
            crunchifyMsg.setFrom("autoservicelimited@gmail.com");
            crunchifyMsg.setTo(customer.getEmail());
            crunchifyMsg.setSubject("This is password for login autosupport.lk");
            crunchifyMsg.setText("This is Username and password for login http://www.autosupport.lk/login.jsp\n"
                    + "Username :" + username + "\n"
                    + "Password :" + password);

            crunchifymail.send(crunchifyMsg);

        } catch (Exception e) {
            System.out.println("exception");
        }
        return Response.status(Response.Status.CREATED).build();
        //return Response.ok("Test").build();
    }

    @Transactional
    @Override
    public Response findAll() {

        return Response.ok(customerdaoImpl.findallcustomer()).build();
    }

    @Transactional
    @Override
    public Response findcustomerbyid(int id) {

        return Response.ok(customerdaoImpl.findbyId(id)).build();
    }

    @Transactional
    @Override
    public Response getcustermerbyname(String query) {
        return Response.ok(customerdaoImpl.findallcustomerbyname(query)).build();
    }

    @Transactional
    @Override
    public Response removeCustomer(int id) {
        try {
            Customer cus = customerdaoImpl.findbyId(id);
            customerdaoImpl.deleteCustomer(cus);
        } catch (Exception e) {

        }
        return Response.ok(Response.Status.CREATED).build();
    }

    @Transactional
    @Override
    public Response updatecustomer(Customer customer) {
        try {
            customerdaoImpl.updateCustermar(customer);
        } catch (Exception e) {

        }

        return Response.ok(Response.Status.CREATED).build();
    }

    @Transactional
    @Override
    public Response getcustomerbyNic(String query) {
        return Response.ok(customerdaoImpl.findCustomerByNIC(query)).build();
    }

    @Transactional
    @Override
    public Response getcustomerbyaddress(String query) {
        return Response.ok(customerdaoImpl.findallcustomerbyaddress(query)).build();
    }

    @Transactional
    @Override
    public Response getrowcount() {
        JSONObject obj = null;
        try {
            long cus = customerdaoImpl.Customercount();
            long servicessup = servicessupliredaoImpl.ServicesProvidercount();
            long vehicled = vehicledaoImpl.vehiclecount();
            long suplire = supliredaoImpl.suplirecount();
            obj = new JSONObject();

            obj.put("servicessup", servicessup);
            obj.put("vehicled", vehicled);
            obj.put("suplire", suplire);
            obj.put("cus", cus);
        } catch (Exception e) {

        }
        return Response.ok(obj).build();
    }

    @Transactional
    @Override
    public Response getdaterowcount() {
        Customer cus = customerdaoImpl.findbyId(110);

        return Response.ok(customerdaoImpl.Customerofdatecount(cus.getRegesterdate())).build();
    }

}
