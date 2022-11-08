/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.userDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Date;
import model.User;

/**
 *
 * @author vtrun
 */
@MultipartConfig
@WebServlet(name="edit", urlPatterns={"/edit"})
public class edit extends HttpServlet {
   
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
        request.getRequestDispatcher("settingprofile.jsp").forward(request, response);
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
        String name = request.getParameter("name");
        String bio = request.getParameter("bio");
        String mail = request.getParameter("mail");
        String phone = request.getParameter("phone");
        Date dob = Date.valueOf(request.getParameter("dob"));
        String gender = request.getParameter("gender");
        Part part = request.getPart("avatar");
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        user.setName(name);
        user.setBio(bio);
        user.setMail(mail);
        user.setPhone(phone);
        user.setDob(dob);
        user.setGender(gender.equals("Male"));
        
        userDAO ud = new userDAO();
        ud.updateUser(user);
        
        if(part.getSize() > 0){
            String realPath = request.getServletContext().getRealPath("/avatar");
            String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
            
            if (!Files.exists(Paths.get(realPath))) {
                Files.createDirectory(Paths.get(realPath));
            }
            
            part.write(realPath + "/" + fileName);
            
            ud.updateAvatar(user, fileName);
        }
        
        response.sendRedirect("edit");
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
