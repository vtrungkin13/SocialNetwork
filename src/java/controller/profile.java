/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.friendDAO;
import dal.postDAO;
import dal.userDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Friend;
import model.FriendRequest;
import model.Post;
import model.User;

/**
 *
 * @author vtrun
 */
@WebServlet(name="profile", urlPatterns={"/profile"})
public class profile extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet profile</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet profile at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

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
        long id = Long.parseLong(request.getParameter("id"));
        userDAO ud = new userDAO();
        User user = ud.getUserByUserid(id);
        request.setAttribute("userSearch", user);
        
        friendDAO fd = new friendDAO();
        List<Friend> following = fd.getFriendsByUserid(user.getUserid());
        List<Friend> follower = fd.getFriendsByFriendid(user.getUserid());
        request.setAttribute("following", following);
        request.setAttribute("follower", follower);
        
        postDAO pd = new postDAO();
        List<Post> posts = pd.getPostsByUserid(user.getUserid());
        request.setAttribute("post", posts);
        
        boolean isFriend = fd.isFriend(user.getUserid(), id);
        boolean isSentFriendRequest = fd.isSentFriendRequest(user.getUserid(), id);
        request.setAttribute("isFollow", isFriend);
        request.setAttribute("isSentFriendRequest", isSentFriendRequest);
        
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
        
        friendDAO fd = new friendDAO();
        List<Friend> following = fd.getFriendsByUserid(user.getUserid());
        List<Friend> follower = fd.getFriendsByFriendid(user.getUserid());
        request.setAttribute("following", following);
        request.setAttribute("follower", follower);
        
        postDAO pd = new postDAO();
        List<Post> posts = pd.getPostsByUserid(user.getUserid());
        request.setAttribute("post", posts);
        
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
