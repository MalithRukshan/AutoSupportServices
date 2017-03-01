/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.dao;

import com.autosuport.modle.Doneservices;
import com.autosuport.modle.Servicesprovider;
import java.util.List;

/**
 *
 * @author malitha
 */
public interface donservicesDAO {

    public void adddonservices(Doneservices doneservices);

    public void deletedonservices(Doneservices doneservices);

    public void updatedoneservices(Doneservices doneservices);

    public Doneservices findbyId(int servicesproviderid);

    public List<Doneservices> findalldoneservices();

    public List<Doneservices> findallbyname(String name);

    public List<Doneservices> findallbyvehicleid(int id);

    public List<Doneservices> findallbyservic_provid(int s_id);

    public void deleteAll(int id);

}
