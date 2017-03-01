/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.dao;

import com.autosuport.modle.Servicesprovider;
import java.util.List;

/**
 *
 * @author malitha
 */
public interface servicesprovidedao {

    public void addservicesprovider(Servicesprovider suplire);

    public void deleteServicesprovides(Servicesprovider suplire);

    public void updateservicesproviders(Servicesprovider suplire);

    public Servicesprovider findbyId(int suplie);

    public List<Servicesprovider> findallservicesprovides();

    public List<Servicesprovider> findallbyname(String name);

    public List<Servicesprovider> findallservicesBycatagaryname(String catagary);

    public long ServicesProvidercount();

    public Servicesprovider findbycontacnumber(String contacnumber);
}
