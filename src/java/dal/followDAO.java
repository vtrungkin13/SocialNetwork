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
import model.Follow;
import model.FollowRequest;
import model.User;

/**
 *
 * @author vtrun
 */
public class followDAO extends DBContext {
    
    public List<Follow> getUserFollowings(User user) {
        List<Follow> followings = new ArrayList<>();
        userDAO ud = new userDAO();
        String sql = "SELECT * FROM [Follow] WHERE [User] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Follow f = new Follow(ud.getUserByUsername(rs.getString(1)),
                        ud.getUserByUsername(rs.getString(2)));
                followings.add(f);
            }
        } catch (SQLException e) {
            
        }
        return followings;
    }
    
    public List<Follow> getUserFollowers(User user) {
        List<Follow> followers = new ArrayList<>();
        userDAO ud = new userDAO();
        String sql = "SELECT * FROM [Follow] WHERE [Following] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Follow f = new Follow(ud.getUserByUsername(rs.getString(1)),
                        ud.getUserByUsername(rs.getString(2)));
                followers.add(f);
            }
        } catch (SQLException e) {
            
        }
        return followers;
    }
    
    public void addFollow(User user, User following) {
        String sql = "INSERT INTO [Follow] VALUES (?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, following.getUsername());
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public void addFollowRequest(User fromUser, User toUser) {
        String sql = "INSERT INTO [FollowRequest] VALUES (?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, fromUser.getUsername());
            ps.setString(2, toUser.getUsername());
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public List<FollowRequest> getFollowRequest(User user) {
        List<FollowRequest> requests = new ArrayList<>();
        userDAO ud = new userDAO();
        String sql = "SELECT * FROM [FollowRequest] WHERE [ToUser] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                FollowRequest fr = new FollowRequest(ud.getUserByUsername(rs.getString(1)),
                         ud.getUserByUsername(rs.getString(2)));
                requests.add(fr);
            }
        } catch (SQLException e) {
            
        }
        return requests;
    }
    
    public boolean hasFollow(User user, User following) {
        String sql = "SELECT * FROM [Follow] WHERE [User] = ? AND [Following] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, following.getUsername());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;                
            }
        } catch (SQLException e) {
            
        }
        return false;
    }
    
    public boolean hasSentFollowRequest(User fromUser, User toUser) {
        String sql = "SELECT * FROM [FollowRequest] WHERE [FromUser] = ? AND [ToUser] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, fromUser.getUsername());
            ps.setString(2, toUser.getUsername());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;                
            }
        } catch (SQLException e) {
            
        }
        return false;
    }
    
    public void deleteFollower(User user, User follower) {
        String sql = "DELETE FROM [Follow] WHERE [User] = ? AND [Following] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, follower.getUsername());
            ps.setString(2, user.getUsername());
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public void deleteFollowRequest(User user, User follower) {
        String sql = "DELETE FROM [FollowRequest] WHERE [FromUser] = ? AND [ToUser] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, follower.getPhone());
            ps.setString(2, user.getUsername());
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
}
