/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.daoimpl;

import com.autosuport.dao.advertismentdao;
import com.autosuport.modle.Advetiesmet;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Damith Nuwan Sampath
 */
@Repository
public class advertiesmentdaoimpl implements advertismentdao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addimage(Advetiesmet add) {
        sessionFactory.getCurrentSession().save(add);
    }

    @Override
    public List<Advetiesmet> detallimage() {
        List<Advetiesmet> list = sessionFactory.getCurrentSession().createCriteria(Advetiesmet.class).list();

        return list;
    }

}
