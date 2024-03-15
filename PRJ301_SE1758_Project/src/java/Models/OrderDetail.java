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
public class OrderDetail {
    private int orderdetailID;
    private int quantity;
    private int price;
    private Date orderdate;

    public OrderDetail(int orderdetailID, int quantity, int price, Date orderdate) {
        this.orderdetailID = orderdetailID;
        this.quantity = quantity;
        this.price = price;
        this.orderdate = orderdate;
    }

    public int getOrderdetailID() {
        return orderdetailID;
    }

    public void setOrderdetailID(int orderdetailID) {
        this.orderdetailID = orderdetailID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Date getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(Date orderdate) {
        this.orderdate = orderdate;
    }
    
}
