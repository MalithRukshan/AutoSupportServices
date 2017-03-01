/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.dao;

import com.autosuport.modle.Login;

/**
 *
 * @author malitha
 */
public interface logindao {
    
    public void addloginuser(Login login);
    public Login checkusernamepassword(String username,String password);
    
    
    
    
}
