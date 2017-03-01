/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.modle;

import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Damith Nuwan Sampath
 */
@XmlRootElement
public class idclass {

    private int id;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

}
