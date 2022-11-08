/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.userDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author vtrun
 */
@WebServlet(name="changepassword", urlPatterns={"/changepassword"})
public class changepassword extends HttpServlet {
   
    
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
        request.getRequestDispatcher("settingpassword.jsp").forward(request, response);
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
        String password = request.getParameter("pass");
        String newpassword = request.getParameter("newpass");
        String renewpassword = request.getParameter("renewpass");
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        if (!password.equals(user.getPassword())) {
            request.setAttribute("passwordIncorrect", "Your old password was entered incorrectly");
        } else {
            if (!newpassword.equals(renewpassword)) {
                request.setAttribute("passwordNotMatch", "Please make sure both passwords match");
            } else {
                userDAO ud = new userDAO();
                ud.updatePassword(user, newpassword);
            }
        }
        request.getRequestDispatcher("settingpassword.jsp").forward(request, response);
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
