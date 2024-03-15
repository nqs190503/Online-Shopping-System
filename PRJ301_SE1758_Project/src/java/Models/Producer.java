/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author ADMIN
 */
public class Producer {
    private int producerID;
    private String name;
    private String Address;

    public Producer(int producerID, String name, String Address) {
        this.producerID = producerID;
        this.name = name;
        this.Address = Address;
    }

    public int getProducerID() {
        return producerID;
    }

    public void setProducerID(int ProducerID) {
        this.producerID = ProducerID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }
    
}
