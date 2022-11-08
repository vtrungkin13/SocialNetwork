/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.followDAO;
import dal.postDAO;
import dal.userDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Follow;
import model.Post;
import model.User;

/**
 *
 * @author vtrun
 */
@WebServlet(name="profile", urlPatterns={"/profile"})
public class profile extends HttpServlet {
   
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
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        String username = request.getParameter("username");
        userDAO ud = new userDAO();
        User searchedUser = ud.getUserByUsername(username);
        request.setAttribute("searchedUser", searchedUser);
        
        followDAO fd = new followDAO();
        List<Follow> followings = fd.getUserFollowings(searchedUser);
        List<Follow> followers = fd.getUserFollowers(searchedUser);
        request.setAttribute("followings", followings);
        request.setAttribute("followers", followers);
        
        postDAO pd = new postDAO();
        List<Post> posts = pd.getUserPosts(searchedUser);
        request.setAttribute("posts", posts);
        
        boolean hasFollow = fd.hasFollow(user, searchedUser);
        boolean hasSentFollowRequest = fd.hasSentFollowRequest(user, searchedUser);
        request.setAttribute("hasFollow", hasFollow);
        request.setAttribute("hasSentFollowRequest", hasSentFollowRequest);
        
        request.getRequestDispatcher("profilefriend.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        
        followDAO fd = new followDAO();
        List<Follow> followings = fd.getUserFollowings(user);
        List<Follow> followers = fd.getUserFollowers(user);
        request.setAttribute("followings", followings);
        request.setAttribute("followers", followers);
        
        postDAO pd = new postDAO();
        List<Post> posts = pd.getUserPosts(user);
        request.setAttribute("posts", posts);
        
        request.getRequestDispatcher("profile.jsp").forward(request, response);
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
