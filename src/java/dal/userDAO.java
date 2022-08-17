/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author tungb
 */
public class userDAO extends DBContext {
    
    public List<User> getUsers() {
        List<User> users = new ArrayList<>();
        String sql = "select * from [user];";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getDate(8),
                        rs.getString(9));
                users.add(u);
            }
        } catch (SQLException e) {
            
        }
        return users;
    }
    
    public void addUser(User u) {
        String sql = "insert into [user] ([username], [password], [name], [avatar], [gender], [dob], [userid])"
                + " values(?, ?, ?, ?, ?, ?, ?)";
        String avatar = "default-avatar.jpg";
        long size = getUsers().size();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getName());
            ps.setString(4, avatar);
            ps.setBoolean(5, u.getGender());
            ps.setDate(6, u.getDob());
            ps.setString(7, String.valueOf(++size));
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public void deleteUser(String username) {
        String sql = "delete from [user] where [username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public void updateName(String username, String name) {
        String sql = "update [user] set [name] = ? where [username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public void updateMail(String username, String mail) {
        String sql = "update [user] set [mail] = ? where [username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, mail);
            ps.setString(2, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public void updatePhone(String username, String phone) {
        String sql = "update [user] set [phone] = ? where [username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, phone);
            ps.setString(2, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public void updateAvatar(String username, String avatar) {
        String sql = "update [user] set [avatar] = ? where [username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, avatar);
            ps.setString(2, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public void updateGender(String username, boolean gender) {
        String sql = "update [user] set [gender] = ? where [username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setBoolean(1, gender);
            ps.setString(2, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public void updateDob(String username, Date dob) {
        String sql = "update [user] set [dob] = ? where [username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setDate(1, dob);
            ps.setString(2, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public void updateUserid(String username, String userid) {
        String sql = "update [user] set [userid] = ? where [username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, userid);
            ps.setString(2, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public void updatePassword(String username, String password) {
        String sql = "update [user] set [password] = ? where [username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, password);
            ps.setString(2, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public User getUserByUsername(String username) {
        String sql = "select * from [user] where [username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new User(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getDate(8),
                        rs.getString(9));
            }
        } catch (SQLException e) {
            
        }
        return null;
    }
    
    public User getUserByUsernameAndPassword(String username, String password) {
        String sql = "select * from [user] where [username] = ? and [password] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                return new User(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getBoolean(7),
                        rs.getDate(8),
                        rs.getString(9));
            }
        } catch(SQLException e) {
            
        }
        return null;
    }
}
