/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.servicesimpl;

import com.autosuport.modle.logindatails;
import com.autosuport.dao.logindao;
import com.autosuport.modle.Login;
import com.autosuport.services.loginservices;
import java.net.URISyntaxException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.core.Response;
import org.apache.cxf.message.Message;
import org.apache.cxf.phase.PhaseInterceptorChain;
import org.apache.cxf.transport.http.AbstractHTTPDestination;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author malitha
 */
@Service
public class loginservicesimpl implements loginservices {

    @Autowired
    private logindao logindaoImpl;

    @Transactional
    @Override
    public Response getServicesproviderbycatagary(logindatails logi) {
        JSONObject obj = null;
        try {
            Login logil = logindaoImpl.checkusernamepassword(logi.getUsername(), logi.getPassword());
            // java.net.URI location = null;
            obj = new JSONObject();
            if (logil != null) {
                obj.put("userid", logil.getUserid());
                obj.put("loginRols", logil.getLoginRols());
                Message message = PhaseInterceptorChain.getCurrentMessage();
                HttpServletRequest request = (HttpServletRequest) message.get(AbstractHTTPDestination.HTTP_REQUEST);
                HttpSession session = request.getSession();//true
                session.setAttribute("userid", logil.getUserid());
                session.setAttribute("loginRols", logil.getLoginRols());

            } else {
                int x = 0;
                obj.put("userid", null);
                obj.put("loginRols", null);
                Message message = PhaseInterceptorChain.getCurrentMessage();
                HttpServletRequest request = (HttpServletRequest) message.get(AbstractHTTPDestination.HTTP_REQUEST);
                HttpSession session = request.getSession(true);
                session.setAttribute("userid", null);
                session.setAttribute("loginRols", null);
            }
        } catch (Exception e) {

        }
        // System.out.println(logil.getLoginRols());
        return Response.ok(obj).build();
    }

    @Override
    public Response logout() {
        try {
            Message message = PhaseInterceptorChain.getCurrentMessage();
            HttpServletRequest request = (HttpServletRequest) message.get(AbstractHTTPDestination.HTTP_REQUEST);
            HttpServletResponse response = (HttpServletResponse) message.get(AbstractHTTPDestination.HTTP_RESPONSE);
            //request.getSession().invalidate();
            request.getSession().setAttribute("userid", null);
            request.getSession().setAttribute("loginRols", null);
//        response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1 
//        response.setHeader("Pragma", "no-cache"); //HTTP 1.0 
//        response.setDateHeader("Expires", 0);
            System.out.println("testing");
        } catch (Exception e) {

        }
        java.net.URI location = null;
        try {
            location = new java.net.URI("http://www.autosupport.lk/login.jsp");
        } catch (URISyntaxException ex) {
            Logger.getLogger(loginservicesimpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Response.temporaryRedirect(location).build();
    }

}
