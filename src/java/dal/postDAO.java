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

/**
 *
 * @author vtrun
 */
public class postDAO extends DBContext {

    public List<Post> getPosts() {
        List<Post> posts = new ArrayList<>();
        userDAO ud = new userDAO();
        String sql = "select * from [post]";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Post p = new Post(rs.getLong(1), rs.getDate(2), rs.getTime(3),
                        rs.getString(4), rs.getString(5), ud.getUserByUserid(rs.getLong(6)));
                posts.add(p);
            }
        } catch (SQLException e) {

        }
        return posts;
    }

    public List<Post> getPostsOrdered(long userid) {
        List<Post> posts = new ArrayList<>();
        userDAO ud = new userDAO();
        String sql = "select p.[postid], p.[date], p.[time], p.[content], p.[attachment], p.[userid], 1 as [order] \n"
                + "from [post] p join [friend] f on p.[Userid] = f.[friend] \n"
                + "where f.[user] = ?\n"
                + "union\n"
                + "select [postid], [date], [time], [content], [attachment], [userid], 2 as [order] \n"
                + "from [post] where [userid] not in \n"
                + "(select [userid] from [post] p join [friend] f on p.[Userid] = f.[friend] \n"
                + "where f.[user] = ?)\n"
                + "order by [order], [date] desc, [time] desc";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, userid);
            ps.setLong(2, userid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Post p = new Post(rs.getLong(1), rs.getDate(2), rs.getTime(3),
                        rs.getString(4), rs.getString(5), ud.getUserByUserid(rs.getLong(6)));
                posts.add(p);
            }
        } catch (SQLException e) {

        }
        return posts;
    }

    public void addPost(Post p) {
        String sql = "insert into [post] values (?, cast(getdate() as date), "
                + "cast(getdate() as time), ?, ?, ?)";
        long size = getPosts().size();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, ++size);
            ps.setString(2, p.getContent());
            ps.setString(3, p.getAttachment());
            ps.setLong(4, p.getUser().getUserid());
            ps.executeUpdate();
        } catch (SQLException e) {

        }
    }
}
