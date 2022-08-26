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
                        rs.getString(7),
                        rs.getBoolean(8),
                        rs.getDate(9),
                        rs.getLong(10));
                users.add(u);
            }
        } catch (SQLException e) {

        }
        return users;
    }

    public void addUser(User u) {
        String sql = "insert into [user] ([username], [password], [name], [avatar], [gender], [dob], [userid])"
                + " values(?, ?, ?, ?, ?, ?, ?)";
        String avatar = "default-avatar.png";
        long size = getUsers().size();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getName());
            ps.setString(4, avatar);
            ps.setBoolean(5, u.getGender());
            ps.setDate(6, u.getDob());
            ps.setLong(7, ++size);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void deleteUser(long userid) {
        String sql = "delete from [user] where [userid] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, userid);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updateUser(long userid, String username, String name, String mail, String bio, String phone, boolean gender, Date dob) {
        String sql = "update [user] set [username] = ?, [name] = ?, [bio] = ?, [mail] = ?, "
                + "[phone] = ?, [gender] = ?, [dob] = ? where [userid] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, name);
            ps.setString(3, bio);
            ps.setString(4, mail);
            ps.setString(5, phone);
            ps.setBoolean(6, gender);
            ps.setDate(7, dob);
            ps.setLong(8, userid);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updateUsername(long userid, String username) {
        String sql = "update [user] set [username] = ? where [userid] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setLong(2, userid);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updateName(long userid, String name) {
        String sql = "update [user] set [name] = ? where [userid] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setLong(2, userid);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updateMail(long userid, String mail) {
        String sql = "update [user] set [mail] = ? where [userid] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, mail);
            ps.setLong(2, userid);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updatePhone(long userid, String phone) {
        String sql = "update [user] set [phone] = ? where [userid] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, phone);
            ps.setLong(2, userid);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updateAvatar(long userid, String avatar) {
        String sql = "update [user] set [avatar] = ? where [userid] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, avatar);
            ps.setLong(2, userid);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updateGender(long userid, boolean gender) {
        String sql = "update [user] set [gender] = ? where [userid] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setBoolean(1, gender);
            ps.setLong(2, userid);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updateDob(long userid, Date dob) {
        String sql = "update [user] set [dob] = ? where [username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setDate(1, dob);
            ps.setLong(2, userid);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updatePassword(long userid, String password) {
        String sql = "update [user] set [password] = ? where [userid] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, password);
            ps.setLong(2, userid);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public User getUserByUserid(long userid) {
        String sql = "select * from [user] where [userid] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, userid);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new User(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8),
                        rs.getDate(9),
                        rs.getLong(10));
            }
        } catch (SQLException e) {

        }
        return null;
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
                        rs.getString(7),
                        rs.getBoolean(8),
                        rs.getDate(9),
                        rs.getLong(10));
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
            if (rs.next()) {
                return new User(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getBoolean(8),
                        rs.getDate(9),
                        rs.getLong(10));
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public List<User> getUsersSearch(long userid) {
        String sql = "select u.[username], u.[name] from [user] u join [friend] f on u.Userid = f.friend\n"
                + "where f.[user] = ?\n"
                + "union\n"
                + "select [username], [name] from [user]";
        List<User> users = new ArrayList();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, userid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setUsername(rs.getString(1));
                u.setName(rs.getString(2));
                users.add(u);
            }
        } catch (SQLException e) {
            
        }
        return users;
    }
}
