/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Post;
import model.User;

/**
 *
 * @author vtrun
 */
public class postDAO extends DBContext {

    public List<Post> getAllPosts() {
        List<Post> posts = new ArrayList<>();
        userDAO ud = new userDAO();
        String sql = "SELECT * FROM [Post]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Post p = new Post(rs.getLong(1), rs.getDate(2), rs.getTime(3),
                        rs.getString(4), rs.getString(5), ud.getUserByUsername(rs.getString(6)));
                posts.add(p);
            }
        } catch (SQLException e) {

        }
        return posts;
    }

    public List<Post> getOrderedPosts(User user) {
        List<Post> posts = new ArrayList<>();
        userDAO ud = new userDAO();
        String sql = "SELECT p.*, 1 as [Order]\n"
                + "FROM [Post] p JOIN [Follow] f on p.[Username] = f.[Following]\n"
                + "WHERE f.[User] = ?\n"
                + "UNION\n"
                + "SELECT *, 2 as [Order]\n"
                + "FROM [Post] WHERE [Username] NOT IN\n"
                + "(SELECT [Username] FROM [Post] p JOIN [Follow] f on p.[Username] = f.[Following]\n"
                + "where f.[User] = ?)\n"
                + "order by [Order], [Date] desc, [Time] desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getUsername());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Post p = new Post(rs.getLong(1), rs.getDate(2), rs.getTime(3),
                        rs.getString(4), rs.getString(5), ud.getUserByUsername(rs.getString(6)));
                posts.add(p);
            }
        } catch (SQLException e) {

        }
        return posts;
    }

    public void addPost(Post post) {
        String sql = "INSERT INTO [Post]([Content], [Image], [Username])\n"
                + "VALUES (?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, post.getContent());
            ps.setString(2, post.getImage());
            ps.setString(3, post.getUser().getUsername());
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public List<Post> getUserPosts(User user) {
        List<Post> posts = new ArrayList<>();
        userDAO ud = new userDAO();
        String sql = "SELECT * FROM [Post] WHERE [Username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Post p = new Post(rs.getLong(1), rs.getDate(2), rs.getTime(3),
                        rs.getString(4), rs.getString(5),
                        ud.getUserByUsername(user.getUsername()));
                posts.add(p);
            }
        } catch (SQLException e) {

        }
        return posts;
    }
}
