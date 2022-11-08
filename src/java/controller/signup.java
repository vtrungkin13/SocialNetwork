/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.userDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import model.User;

/**
 *
 * @author vtrun
 */
@WebServlet(name = "signup", urlPatterns = {"/signup"})
public class signup extends HttpServlet {

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
        request.getRequestDispatcher("signup.jsp").forward(request, response);
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
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String repassword = request.getParameter("repass");
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String date = request.getParameter("dob");
        Date dob = Date.valueOf(date);
        
        
        userDAO ud = new userDAO();

        if (ud.getUserByUsername(username) == null) {
            if (password.equals(repassword)) {
                ud.addUser(username, password, name, gender.equals("Male"), dob);
                User user = ud.getUserByUsername(username);
                Cookie cookie = new Cookie("uid", String.valueOf(user.getUserid()));
                response.addCookie(cookie);
                response.sendRedirect("home");
            } else {
                request.setAttribute("passNotMatch", "Password does not match");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("existedUser", "Username has been existed");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
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
