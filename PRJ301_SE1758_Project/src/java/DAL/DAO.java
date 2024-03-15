/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Models.Detail;
import Models.Order;
import Models.OrderDetail;
import Models.Producer;
import Models.Product;
import Models.User;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;
import java.util.Vector;

/**
 *
 * @author ADMIN
 */
public class DAO {

    public static DAO ins = new DAO();
    private Connection con;
    private String status = "ok";
    private HashMap<Integer, Product> product1;
    private List<Product> product;
    private List<Producer> producer;
    private HashMap<Integer, User> userlist;
    private List<Detail> detail;
    private HashMap<Integer, Detail> detail1;
    private User user;
    private List<Order> order;
    private HashMap<Integer, OrderDetail> orderdetail;

    private DAO() {
        if (ins == null) {
            try {
                con = new DBContext().getConnection();
            } catch (Exception e) {
                status = "Error at connection" + e.getMessage();
            }
        }
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<Order> getOrder() {
        return order;
    }

    public void setOrder(List<Order> order) {
        this.order = order;
    }

    public HashMap<Integer, Product> getProduct1() {
        return product1;
    }

    public void setProduct1(HashMap<Integer, Product> product1) {
        this.product1 = product1;
    }

    public List<Product> getProduct() {
        return product;
    }

    public void setProduct(List<Product> product) {
        this.product = product;
    }

    public HashMap<Integer, Detail> getDetail1() {
        return detail1;
    }

    public void setDetail1(HashMap<Integer, Detail> detail1) {
        this.detail1 = detail1;
    }

    public List<Producer> getProducer() {
        return producer;
    }

    public void setProducer(List<Producer> producer) {
        this.producer = producer;
    }

    public List<Detail> getDetail() {
        return detail;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setDetail(List<Detail> detail) {
        this.detail = detail;
    }

    public HashMap<Integer, User> getUserlist() {
        return userlist;
    }

    public void setUserlist(HashMap<Integer, User> userlist) {
        this.userlist = userlist;
    }

    public HashMap<Integer, OrderDetail> getOrderdetail() {
        return orderdetail;
    }

    public void setOrderdetail(HashMap<Integer, OrderDetail> orderdetail) {
        this.orderdetail = orderdetail;
    }

    public HashMap loadProductWithHashMap() {
        product1 = new HashMap<Integer, Product>();
        String sql = "select * from Product_HE171358";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product1.put(rs.getInt("ProductID"), new Product(
                        rs.getInt("ProductID"),
                        rs.getInt("ProducerID"),
                        rs.getInt("DetailID"),
                        rs.getInt("Price"),
                        rs.getInt("Quantity"),
                        rs.getDate("ReleaseDate"),
                        rs.getString("Img"),
                        rs.getString("Name"), rs.getString("Img_red"), rs.getString("Img_blue")));
            }
        } catch (Exception e) {
            status = "error at read Product" + e.getMessage();
        }

        return product1;
    }

    public void loadProduct() {
        product = new Vector<Product>();
        String sql = "select * from Product_HE171358";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product.add(new Product(
                        rs.getInt("ProductID"),
                        rs.getInt("ProducerID"),
                        rs.getInt("DetailID"),
                        rs.getInt("Price"),
                        rs.getInt("Quantity"),
                        rs.getDate("ReleaseDate"),
                        rs.getString("Img"),
                        rs.getString("Name"), rs.getString("Img_red"), rs.getString("Img_blue")));
            }
        } catch (Exception e) {
            status = "error at read Product" + e.getMessage();
        }
//        loadProducer();
//        loadDetail();
    }

    public void loadProducer() {
        producer = new Vector<Producer>();
        String sql = "select * from Producer_HE171358";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                producer.add(new Producer(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }
    }

    public void loadDetail() {
        detail = new Vector<Detail>();
        String sql = "select * from Detail_HE171358";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                detail.add(new Detail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
    }

    public HashMap loadUserWithHashMap() {
        userlist = new HashMap<Integer, User>();
        String sql = "select * from User_HE171358";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                userlist.put(rs.getInt(1), new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }

        } catch (Exception e) {

        }
        loadProduct();
        return userlist;
    }

    public HashMap loadDetailWithHashMap() {
        detail1 = new HashMap<Integer, Detail>();
        String sql = "select * from Detail_HE171358";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                detail1.put(rs.getInt(1), new Detail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }

        } catch (Exception e) {

        }
        return detail1;
    }

    public void loadOrder() {
        order = new Vector<Order>();
        String sql = "select * from Orders_HE171358 o join User_HE171358 u on o.UserID = u.UserID where u.Roll = 1";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                order.add(new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5)));
            }
        } catch (Exception e) {
        }
//        loadUserWithHashMap();
//        loadProduct();
    }

    public void loadOrderWithUserID(int userID) {
        order = new Vector<Order>();
        String sql = "select * from Orders_HE171358 o join User_HE171358 u on o.UserID = u.UserID where u.Roll = 1 and o.userID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                order.add(new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5)));
            }
        } catch (Exception e) {
        }
    }

    public void loadOrderDetailWithUserID(int userID) {
        orderdetail = new HashMap<Integer, OrderDetail>();
        String sql = "select od.*\n"
                + "from Orders_HE171358 o join OrderDetail_HE171358 od on o.OrderDetailID = od.OrderDetailID\n"
                + "where o.UserID=?";
        if (userID < 0) {
            sql = "select od.*\n"
                    + "from Orders_HE171358 o join OrderDetail_HE171358 od on o.OrderDetailID = od.OrderDetailID";
        }
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            if (userID > 0) {
                ps.setInt(1, userID);
            }

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                orderdetail.put(rs.getInt(1), new OrderDetail(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDate(4)));
            }
        } catch (Exception e) {
        }
    }

    public void filter1(String[] producer, Integer[] ram, Integer[] price) {
        String sql = "select * "
                + "from Product_HE171358 p "
                + "join Producer_HE171358 pc on p.ProducerID= pc.ProducerID "
                + "join Detail_HE171358 d on p.DetailID = d.DetailID ";
        String a = producer != null ? "pc.ProducerName" : (ram != null ? "d.[Ram(Gb)]" : "");
        String b = a.equals("pc.ProducerName") && ram != null ? "d.[Ram(Gb)]" : "";
        Integer length;
        if (!a.isEmpty()) {
            length = a.equals("pc.ProducerName") ? producer.length : ram.length;
            sql += " where " + "(" + a + " = ?";
            for (int i = 1; i < (length != null ? length : 0); i++) {
                sql += " or " + a + " = ?";
            }
            sql += ")";
        }
        if (!b.isEmpty()) {
            length = b.equals("pc.ProducerName") ? producer.length : ram.length;
            sql += " and (" + b + " = ?";
            for (int i = 1; i < (length != null ? length : 0); i++) {
                sql += " or " + b + " = ?";
            }
            sql += ")";
        }
        if (!a.isEmpty() || !b.isEmpty()) {
            sql += " and p.Price between ? and ?";
        } else {
            sql += "where p.Price between ? and ? ";
        }
        System.out.println(sql);
        product = new Vector<Product>();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            Integer length1 = a.equals("pc.ProducerName") ? producer.length : (a.equals("d.[Ram(Gb)]") ? ram.length : 0);
            length = length1 + (b.equals("pc.ProducerName") ? producer.length : (b.equals("d.[Ram(Gb)]") ? ram.length : 0));
            if (ram == null && producer != null) {
                for (int i = 0; i < producer.length; i++) {
                    ps.setString(i + 1, producer[i]);

                }
                ps.setInt(producer.length + 1, price[0]);
                ps.setInt(producer.length + 2, price[1]);

            }
            if (ram != null && producer == null) {
                for (int i = 0; i < ram.length; i++) {
                    ps.setInt(i + 1, ram[0]);

                }
                ps.setInt(ram.length + 1, price[0]);

                ps.setInt(ram.length + 2, price[1]);
            }
            if (ram != null && producer != null) {
                int j = 0;
                for (int i = 0; i < producer.length; i++) {
                    ps.setString(i, producer[i]);

                }
                for (int i = producer.length; i < producer.length + ram.length; i++) {
                    ps.setInt(i + 1, ram[j]);

                    j++;
                }
                ps.setInt(ram.length + producer.length + 1, price[0]);

                ps.setInt(ram.length + producer.length + 2, price[1]);

            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product.add(new Product(
                        rs.getInt("ProductID"),
                        rs.getInt("ProducerID"),
                        rs.getInt("DetailID"),
                        rs.getInt("Price"),
                        rs.getInt("Quantity"),
                        rs.getDate("ReleaseDate"),
                        rs.getString("Img"),
                        rs.getString("Name"), rs.getString("Img_red"), rs.getString("Img_blue")));
            }
        } catch (Exception e) {
            status = "error at read Product" + e.getMessage();
        }
        loadProducer();
        loadDetail();
        System.out.println(sql);
    }

    public void login(String account, String password) {

        String sql = "select * from User_HE171358 where Account = ? and [Password] = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, account);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                user = new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
        }
    }

    public void register(String name, String address, int contact, String account, String password) {
        loadUserWithHashMap();
        String sql = "insert into User_HE171358 values(?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, getUserlist().size() + 1);
            ps.setString(2, account);
            ps.setString(3, password);
            ps.setInt(4, 1);
            ps.setString(5, name);
            ps.setString(6, address);
            ps.setInt(7, contact);
            ps.execute();
        } catch (Exception e) {
        }
    }

    public void logout() {
        user = null;
    }

    public Product getProductByID(int productID) {

        product = new Vector<Product>();
        String sql = "select * from Product_HE171358 where ProductID = ? ";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, productID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product.add(new Product(
                        rs.getInt("ProductID"),
                        rs.getInt("ProducerID"),
                        rs.getInt("DetailID"),
                        rs.getInt("Price"),
                        rs.getInt("Quantity"),
                        rs.getDate("ReleaseDate"),
                        rs.getString("Img"),
                        rs.getString("Name"), rs.getString("Img_red"), rs.getString("Img_blue")));
            }
        } catch (Exception e) {
            status = "error at read Product" + e.getMessage();
        }
        loadProducer();
        loadDetail();

        return product.get(0);
    }

    public User getUserByUserID(int userID) {
        String sql = "select * from User_HE171358 where userID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                user = new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return user;
    }

    public Order getOrderByPidAndUid(int userID, int productID) {
        Order o = null;
        String sql = "select * from Orders_HE171358 where UserID = ? and ProductID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userID);
            ps.setInt(2, productID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }

        return o;
    }

    public void inserIntoOrderList(int userID, int productID) {
        loadOrderDetailWithUserID(userID);
        Order o1 = getOrderByPidAndUid(userID, productID);
        if (o1 != null && o1.getProductID() == productID) {
            
            String sql = "update OrderDetail_HE171358 set Quantity = ? where (OrderDetailID = ?) "
                    + "update Orders_HE171358 set [Status] = 'waiting' where UserID = ? and ProductID = ?";

            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, orderdetail.get(o1.getOrderdetailID()).getQuantity() + 1);
                ps.setInt(2, o1.getOrderdetailID());
                ps.setInt(3, userID);
                ps.setInt(4, productID);
                ps.execute();
            } catch (Exception e) {
                status = "error";
            }
        } else {
            String query = "insert into OrderDetail_HE171358 values(?,?,?)";
            try {
                PreparedStatement ps = con.prepareStatement(query);
                ps.setInt(1, 1);
                ps.setInt(2, getProductByID(productID).getPrice());
                ps.setDate(3, new Date(System.currentTimeMillis()));
                ps.execute();
            } catch (Exception e) {
            }
            loadOrderDetailWithUserID(-1);
            String sql = "insert into Orders_HE171358 values(?,?,?,?) ";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, userID);
                ps.setInt(2, productID);
                ps.setString(3, "waiting");
                ps.setInt(4, orderdetail.size() + 2);
                ps.execute();
            } catch (Exception e) {
            }
        }
    }
    public void editStatus(String accept, String reject, int quantity, int orderID) {
        String sql = "update Orders_HE171358 set [Status] = ?  where OrderID = ? ";
        String a = (accept != null ? "Accept" : "Reject");
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, a);
            ps.setInt(2, orderID);
            ps.execute();
        } catch (Exception e) {
            status = "error";
        }
    }
    public static void main(String[] args) {
        DAO.ins.inserIntoOrderList(4, 2);
        System.out.println(DAO.ins.getStatus());
    }

    public void addProduct(int price, String name, int quantity, String img, int producerID) {
        String sql = "insert into Product_HE171358(ProductID,ProducerID,DetailID,Quantity,ReleaseDate,Img,[Name],Price) values(?,?,?,?,?,?,?,?)";
        loadProduct();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, getProduct().size() + 1);
            ps.setInt(2, producerID);
            ps.setInt(3, 1);
            ps.setInt(4, quantity);
            ps.setDate(5, new Date(System.currentTimeMillis()));
            ps.setString(6, img);
            ps.setString(7, name);
            ps.setInt(8, price);
            ps.execute();
        } catch (Exception e) {
        }
    }

    public void updateProfile(int userID, String uName, int uContact, String uAddress) {
        String sql = "update User_HE171358 set [name] = ? , [Address] = ? , [Contact] = ? where UserID = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, uName);
            ps.setString(2, uAddress);
            ps.setInt(3, uContact);
            ps.setInt(4, userID);
            ps.execute();
        } catch (Exception e) {
        }
    }

}
