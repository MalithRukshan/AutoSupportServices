/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.dao;

import com.autosuport.modle.Suplire;
import java.util.List;

/**
 *
 * @author malitha
 */
public interface supliredao {

    public void addSuplire(Suplire suplire);

    public void deleteSuplire(Suplire suplire);

    public void updatesuplire(Suplire suplire);

    public Suplire findbyId(int suplie);

    public List<Suplire> findallsuplire();

    public List<Suplire> findallsuplirebyname(String name);

    public long suplirecount();
    
     public Suplire findbycontacnumber(String contacnumber);
}
