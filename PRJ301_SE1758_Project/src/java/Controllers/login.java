/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import DAL.DAO;
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
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        DAO.ins.logout();
        if (request.getParameter("login") != null) {
            String account = request.getParameter("account");
            String password = request.getParameter("password");
            DAO.ins.login(account, password);
            if (DAO.ins.getUser() == null) {
                request.setAttribute("mess", "Wrong account or password");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                HttpSession ses = request.getSession();
                ses.setAttribute("user", DAO.ins.getUser());
                ses.setMaxInactiveInterval(30000);
                response.sendRedirect("homepage");
            }
        }
        if (request.getParameter("register") != null) {
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            int contact = Integer.parseInt(request.getParameter("contact"));
            String account = request.getParameter("newaccount");
            String password = request.getParameter("newpassword");
            String check = request.getParameter("checknewpassword");
            DAO.ins.login(account, password);
            if (DAO.ins.getUser() == null && password.equals(check)) {
                DAO.ins.register(name, address, contact, account, password);
                DAO.ins.login(account, password);
                HttpSession ses = request.getSession();
                ses.setAttribute("user", DAO.ins.getUser());
                ses.setMaxInactiveInterval(30000);
                response.sendRedirect("homepage");
            } else {
                String error = (DAO.ins.getUser()!=null)?"this account already exits":(password.equals(check)?"":"password must match");
                request.setAttribute("error", error);
                request.getRequestDispatcher("login.jsp").forward(request, response);
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
