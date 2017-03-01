/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.dao;

import com.autosuport.modle.Customer;
import java.util.Date;
import java.util.List;

/**
 *
 * @author malitha
 */
public interface custermerDao {

    public void addCustermer(Customer customer);

    public void deleteCustomer(Customer customerid);

    public void updateCustermar(Customer customer);

    public Customer findbyId(int customerid);

    public List<Customer> findallcustomer();

    public List<Customer> findallcustomerbyname(String name);

    public Customer findCustomerByNIC(String nic);

    public List<Customer> findallcustomerbyaddress(String address);

    public long Customercount();

    public Long Customerofdatecount(Date date);
}
