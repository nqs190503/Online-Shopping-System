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
public class Product {
    private int productID;
    private int producerID;
    private int detailID;
    private int price;
    private int quantity;
    private Date ReleaseDate;
    private String img;
    private String name;
    private String Img_red;
    private String Img_blue; 

    public Product(int productID, int producerID, int detailID, int price, int quantity, Date ReleaseDate, String img, String name, String Img_red, String Img_blue) {
        this.productID = productID;
        this.producerID = producerID;
        this.detailID = detailID;
        this.price = price;
        this.quantity = quantity;
        this.ReleaseDate = ReleaseDate;
        this.img = img;
        this.name = name;
        this.Img_red = Img_red;
        this.Img_blue = Img_blue;
    }



    public String getImg_red() {
        return Img_red;
    }

    public void setImg_red(String Img_red) {
        this.Img_red = Img_red;
    }

    public String getImg_blue() {
        return Img_blue;
    }

    public void setImg_blue(String Img_blue) {
        this.Img_blue = Img_blue;
    }



    public int getDetailID() {
        return detailID;
    }

    public void setDetailID(int detailID) {
        this.detailID = detailID;
    }
    




    public int getProducerID() {
        return producerID;
    }

    public void setProducerID(int producerID) {
        this.producerID = producerID;
    }



    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getReleaseDate() {
        return ReleaseDate;
    }

    public void setReleaseDate(Date ReleaseDate) {
        this.ReleaseDate = ReleaseDate;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}
