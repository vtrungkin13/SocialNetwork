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
import model.Friend;
import model.FriendRequest;

/**
 *
 * @author vtrun
 */
public class friendDAO extends DBContext {
    
    public List<Friend> getFriendsByUserid(long userid) {
        List<Friend> friends = new ArrayList<>();
        userDAO ud = new userDAO();
        String sql = "select * from [friend] where [user] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, userid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Friend f = new Friend(ud.getUserByUserid(rs.getLong(1)),
                        ud.getUserByUserid(rs.getLong(2)));
                friends.add(f);
            }
        } catch (SQLException e) {
            
        }
        return friends;
    }
    
    public List<Friend> getFriendsByFriendid(long friendid) {
        List<Friend> friends = new ArrayList<>();
        userDAO ud = new userDAO();
        String sql = "select * from [friend] where [friend] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, friendid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Friend f = new Friend(ud.getUserByUserid(rs.getLong(1)),
                        ud.getUserByUserid(rs.getLong(2)));
                friends.add(f);
            }
        } catch (SQLException e) {
            
        }
        return friends;
    }
    
    public void addFriend(long userid, long friendid) {
        String sql = "insert into [friend] values (?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, userid);
            ps.setLong(2, friendid);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public void addFriendRequest(long userid, long friendid) {
        String sql = "insert into [friend_request] values (?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, userid);
            ps.setLong(2, friendid);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public List<FriendRequest> getFriendRequestToUserid(long userid) {
        List<FriendRequest> requests = new ArrayList<>();
        userDAO ud = new userDAO();
        String sql = "select * from [friend_request] where [to] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, userid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                FriendRequest fr = new FriendRequest(ud.getUserByUserid(rs.getLong(1)),
                        ud.getUserByUserid(rs.getLong(2)));
                requests.add(fr);
            }
        } catch (SQLException e) {
            
        }
        return requests;
    }
    
    public boolean isFriend(long user, long friend) {
        String sql = "select * from [friend] where [user] = ? and [friend] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, user);
            ps.setLong(2, friend);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;                
            }
        } catch (SQLException e) {
            
        }
        return false;
    }
    
    public boolean isSentFriendRequest(long from, long to) {
        String sql = "select * from [friend_request] where [from] = ? and [to] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, from);
            ps.setLong(2, to);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;                
            }
        } catch (SQLException e) {
            
        }
        return false;
    }
    
    public void deleteFriend(long userid, long friendid) {
        String sql = "delete from [friend] where [user] = ? and [friend] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, userid);
            ps.setLong(2, friendid);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
    
    public void deleteFriendRequest(long userid, long friendid) {
        String sql = "delete from [friend_request] where [from] = ? and [to] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, userid);
            ps.setLong(2, friendid);
            ps.executeUpdate();
        } catch (SQLException e) {
            
        }
    }
}
