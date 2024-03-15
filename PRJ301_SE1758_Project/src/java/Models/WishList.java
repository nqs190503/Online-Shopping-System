/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author ADMIN
 */
public class WishList {
    private int wishListID;
    private User userID;
    private Product productID;
    private int price;

    public WishList(int wishListID, User userID, Product productID, int price) {
        this.wishListID = wishListID;
        this.userID = userID;
        this.productID = productID;
        this.price = price;
    }

    public int getWishListID() {
        return wishListID;
    }

    public void setWishListID(int wishListID) {
        this.wishListID = wishListID;
    }

    public User getUserID() {
        return userID;
    }

    public void setUserID(User userID) {
        this.userID = userID;
    }

    public Product getProductID() {
        return productID;
    }

    public void setProductID(Product productID) {
        this.productID = productID;
    }

    public int getQuantity() {
        return price;
    }

    public void setQuantity(int price) {
        this.price = price;
    }
    
}
