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
import model.User;

/**
 *
 * @author vtrun
 */
@WebServlet(name="signin", urlPatterns={"/signin"})
public class signin extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        boolean isSignin = false;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("uid")) {
                    isSignin = true;
                }
            }
        }
        if (isSignin) {
            response.sendRedirect("home");
        } else {
            request.getRequestDispatcher("signin.jsp").forward(request,response);
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
        boolean remember = request.getParameter("remmember") != null;
        
        userDAO ud = new userDAO();
        User user = ud.getUserByUsername(username);
        
        if (user != null && user.getPassword().equals(password)) {
            Cookie cookie = new Cookie("uid", String.valueOf(user.getUserid()));
            if (remember) {
                cookie.setMaxAge(60 * 60 * 24 * 365);
            } else {
                cookie.setMaxAge(60 * 60 * 24);
            }
            response.addCookie(cookie);
            response.sendRedirect("home");
        } else {
            request.setAttribute("invalidSignin", "Invalid username or password");
            request.getRequestDispatcher("signin.jsp").forward(request, response);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
