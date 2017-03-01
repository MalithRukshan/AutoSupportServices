/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.servicesimpl;

import com.autosuport.dao.advertismentdao;
import com.autosuport.services.advertiesmentservices;
import javax.ws.rs.core.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Damith Nuwan Sampath
 */
@Service
public class advertiesservicesimpl implements advertiesmentservices {

    @Autowired
    private advertismentdao advertiesdaoImpl;

    @Transactional
    @Override
    public Response findAll() {
        return Response.ok(advertiesdaoImpl.detallimage()).build();
    }

}
