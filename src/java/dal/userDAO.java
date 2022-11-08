/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.User;

/**
 *
 * @author tungb
 */
public class userDAO extends DBContext {

    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM [User];";
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

    public void addUser(String username, String password, String name, boolean gender, Date dob) {
        String sql = "INSERT INTO [User] ([Username], [Password], [Name], [Gender], [Dob])"
                + " VALUES(?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, name);
            ps.setBoolean(4, gender);
            ps.setDate(5, dob);
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void deleteUser(User user) {
        String sql = "DELETE FROM [User] WHERE [Username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updateUser(User user) {
        String sql = "UPDATE [User] SET [Name] = ?, [Bio] = ?, [Mail] = ?, "
                + "[Phone] = ?, [Gender] = ?, [Dob] = ? where [Username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getName());
            ps.setString(2, user.getBio());
            ps.setString(3, user.getName());
            ps.setString(4, user.getPhone());
            ps.setBoolean(5, user.getGender());
            ps.setDate(6, user.getDob());
            ps.setString(7, user.getUsername());
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updateAvatar(User user, String avatar) {
        String sql = "UPDATE [User] SET [Avatar] = ? WHERE [Username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, avatar);
            ps.setString(2, user.getUsername());
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }

    public void updatePassword(User user, String newPassword) {
        String sql = "UPDATE [User] SET [Password] = ? WHERE [Username] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, newPassword);
            ps.setString(2, user.getUsername());
            ps.executeUpdate();
        } catch (SQLException e) {

        }

    }

    public User getUserByUsername(String username) {
        String sql = "SELECT * FROM [User] where [Username] = ?";
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

    public User getUserByUserid(long userid) {
        String sql = "SELECT * FROM [User] where [UserID] = ?";
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

    public List<User> getSearchedUsers(User user) {
        List<User> users = new ArrayList();
        String sql = "SELECT u.*, 1 as [Order] FROM\n"
                + "[User] u JOIN [Follow] f on u.[Username] = f.[User]\n"
                + "WHERE f.[User] = ?\n"
                + "UNION\n"
                + "SELECT *, 2 AS [Order] FROM [User] "
                + "WHERE [Username]\n"
                + "NOT IN (SELECT u.[Username] FROM [User] u JOIN [Follow] f on u.[Username] = f.[Following]\n"
                + "where f.[User] = ?)\n"
                + "ORDER BY [Order]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getUsername());
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
}
