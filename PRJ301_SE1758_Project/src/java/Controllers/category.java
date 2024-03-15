/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAL.DAO;
import Models.Paging;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author ADMIN
 */
public class category extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet category</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet category at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        HttpSession ses = request.getSession();
        if (request.getAttribute("filter") == null) {
            DAO.ins.loadProduct();
        }
        User user = (User) ses.getAttribute("user");
        request.setAttribute("dao", DAO.ins);
        int nrpp = 6, index = -1; //update later
        try {
            nrpp = Integer.parseInt(request.getParameter("nrpp"));
        } catch (Exception e) {
        }
        try {
            index = Integer.parseInt(request.getParameter("index"));
        } catch (Exception e) {
        }
        Paging p = new Paging(nrpp, index, DAO.ins.getProduct().size());
        p.calc();
        request.setAttribute("p", p);
        request.getRequestDispatcher("category.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try ( PrintWriter out = response.getWriter()) {
            String[] producer = request.getParameterValues("producer");
            String[] ram = request.getParameterValues("ram");
            String[] price = request.getParameterValues("price");
            Integer[] price1 = {Integer.parseInt(price[0]), Integer.parseInt(price[1])};
            Integer[] ram1 = null;
            if (ram != null) {
                ram1 = new Integer[ram.length];
                for (int i = 0; i < ram.length; i++) {
                    ram1[i] = Integer.parseInt(ram[i]);
                }
            }
//            out.println("<h1>"+producer[0]+"</h1>");
//            out.println("<h1>"+ram[0]+"</h1>");
//            out.println("<h1>"+price1[1]+"</h1>");
            if (producer == null && ram == null) {
                doGet(request, response);
            } else {
                DAO.ins.filter1(producer, ram1, price1);
                DAO.ins.loadProducer();
                request.setAttribute("filter", "aa");
                doGet(request, response);
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
