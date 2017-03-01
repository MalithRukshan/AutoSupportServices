/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.autosuport.dao;

import com.autosuport.modle.Vehicle;
import java.util.List;

/**
 *
 * @author malitha
 */
public interface vehicledao {

    public void addVehicle(Vehicle vehicle);

    public void deleteVehicle(Vehicle vehicle);

    public void updateVehicle(Vehicle vehicle);

    public Vehicle findbyId(int vehicle);

    public List<Vehicle> findallVehicle();

    public List<Vehicle> findallVehiclebyname(String name);

    public List<Vehicle> findbysuplireid(int id);

    public List<Vehicle> findbycustomerID(int id);

    public long vehiclecount();

}
