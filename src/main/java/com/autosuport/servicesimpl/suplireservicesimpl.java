/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.servicesimpl;

import com.autosuport.dao.logindao;
import com.autosuport.dao.supliredao;
import com.autosuport.modle.Login;
import com.autosuport.modle.Suplire;
import com.autosuport.services.suplireservices;
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
public class suplireservicesimpl implements suplireservices {

    @Autowired
    private supliredao supliredaoImpl;

    @Autowired
    private logindao logindaoImpl;

    @Autowired
    private MailSender crunchifymail;

    @Transactional
    @Override
    public Response addcustermer(Suplire suplire) {
        try {
            supliredaoImpl.addSuplire(suplire);
            Suplire custo = supliredaoImpl.findbycontacnumber(suplire.getContacnumber());

            Login log = new Login();
            log.setLoginRols("suplire");
            Random random = new Random();
            int x = random.nextInt(9000) + 1000;
            String username = "v_suplire" + x;
            log.setUsername(username);
            log.setPassword(passwordgenarter.getSaltString());
            String password = passwordgenarter.getSaltString();
            log.setUserid(custo.getSupid());

            logindaoImpl.addloginuser(log);

            SimpleMailMessage crunchifyMsg = new SimpleMailMessage();
            crunchifyMsg.setFrom("autoservicelimited@gmail.com");
            crunchifyMsg.setTo(suplire.getEmail());
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
        return Response.ok(supliredaoImpl.findallsuplire()).build();
    }

    @Transactional
    @Override
    public Response findsuplirebyid(int id) {
        return Response.ok(supliredaoImpl.findbyId(id)).build();
    }

    @Transactional
    @Override
    public Response getsuplirebyname(String query) {
        return Response.ok(supliredaoImpl.findallsuplirebyname(query)).build();
    }

    @Transactional
    @Override
    public Response removesuplire(int id) {
        try {
            Suplire suplire = supliredaoImpl.findbyId(id);
            supliredaoImpl.deleteSuplire(suplire);
        } catch (Exception e) {

        }
        return Response.ok(Response.Status.CREATED).build();
    }

    @Transactional
    @Override
    public Response updatesuplire(Suplire suplire) {
        try {
            supliredaoImpl.updatesuplire(suplire);
        } catch (Exception e) {

        }
        return Response.ok(Response.Status.CREATED).build();
    }

}
