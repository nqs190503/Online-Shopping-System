/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class Order {

    private int orderID;
    private int userID;
    private int productID;
    private String status;
    private int orderdetailID;

    public Order(int orderID, int userID, int productID, String status, int orderdetailID) {
        this.orderID = orderID;
        this.userID = userID;
        this.productID = productID;
        this.status = status;
        this.orderdetailID = orderdetailID;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getOrderdetailID() {
        return orderdetailID;
    }

    public void setOrderdetailID(int orderdetailID) {
        this.orderdetailID = orderdetailID;
    }

}
