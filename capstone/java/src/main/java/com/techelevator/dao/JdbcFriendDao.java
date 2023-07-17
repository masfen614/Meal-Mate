package com.techelevator.dao;

import com.techelevator.model.Friend;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcFriendDao implements FriendsDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcFriendDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Friend getFriendsByUserId(int userId) {
        Friend friend = null;
        String sql = "SELECT friends_id from friends_list WHERE user_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        if (results.next()) {
            friend = mapRowToFriend(results);
            friend.setUserId(userId);
        }
        return friend;
    }

    @Override
    public Friend addFriend(int userId, int friendId) {
//        String sql = "INSERT INTO friends_list (user_id, friend"
        return null;
    }

    private Friend mapRowToFriend(SqlRowSet results) {
        Friend friend = new Friend();
        while (results.next()) {
            friend.addFriendToList(results.getInt("friends_list"));
        }
        return friend;
    }
}
