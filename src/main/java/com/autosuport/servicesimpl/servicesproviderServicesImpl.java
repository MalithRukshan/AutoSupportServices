/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.servicesimpl;

import com.autosuport.dao.logindao;
import com.autosuport.dao.servicesprovidedao;
import com.autosuport.modle.Login;
import com.autosuport.modle.Servicesprovider;
import com.autosuport.services.servicesproviderServices;
import java.util.Random;
import javax.ws.rs.core.Response;
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
public class servicesproviderServicesImpl implements servicesproviderServices {

    @Autowired
    private logindao logindaoImpl;

    @Autowired
    private servicesprovidedao servicessupliredaoImpl;

    @Autowired
    private MailSender crunchifymail;

    @Transactional
    @Override
    public Response addServicesprovider(Servicesprovider servicesprovider) {
        try {
            servicessupliredaoImpl.addservicesprovider(servicesprovider);
            Servicesprovider custo = servicessupliredaoImpl.findbycontacnumber(servicesprovider.getContacnumber());

            Login log = new Login();
            log.setLoginRols("S_provider");
            Random random = new Random();
            int x = random.nextInt(9000) + 1000;
            String username = "s_provider" + x;
            log.setUsername(username);
            log.setPassword(passwordgenarter.getSaltString());
            String password = passwordgenarter.getSaltString();
            log.setUserid(custo.getSerid());

            logindaoImpl.addloginuser(log);

            SimpleMailMessage crunchifyMsg = new SimpleMailMessage();
            crunchifyMsg.setFrom("autoservicelimited@gmail.com");
            crunchifyMsg.setTo(servicesprovider.getEmail());
            crunchifyMsg.setSubject("This is password for login autosupport.lk");
            crunchifyMsg.setText("This is Username and password for login http://www.autosupport.lk/login.jsp\n"
                    + "Username :" + username + "\n"
                    + "Password :" + password);

            crunchifymail.send(crunchifyMsg);
        } catch (Exception e) {

        }

        return Response.status(Response.Status.CREATED).build();
    }

    @Transactional
    @Override
    public Response findAll() {
        return Response.ok(servicessupliredaoImpl.findallservicesprovides()).build();
    }

    @Transactional
    @Override
    public Response findServicesproviderbyid(int id) {
        return Response.ok(servicessupliredaoImpl.findbyId(id)).build();
    }

    @Transactional
    @Override
    public Response getServicesproviderbyname(String query) {
        return Response.ok(servicessupliredaoImpl.findallbyname(query)).build();
    }

    @Transactional
    @Override
    public Response removeServicesprovider(int id) {
        try {
            Servicesprovider services = servicessupliredaoImpl.findbyId(id);
            servicessupliredaoImpl.deleteServicesprovides(services);
        } catch (Exception e) {

        }
        return Response.ok(Response.Status.CREATED).build();
    }

    @Transactional
    @Override
    public Response updateServicesprovider(Servicesprovider servicesprovider) {

//        Servicesprovider servi = servicessupliredaoImpl.findbyId(servicesprovider.getSerid());
//        servicesprovider.setImage(servi.getImage());
        try {
            servicessupliredaoImpl.updateservicesproviders(servicesprovider);
        } catch (Exception e) {

        }

        return Response.ok(Response.Status.CREATED).build();

    }

    @Transactional
    @Override
    public Response getServicesproviderbycatagary(String query) {
        return Response.ok(servicessupliredaoImpl.findallservicesBycatagaryname(query)).build();
    }

}
