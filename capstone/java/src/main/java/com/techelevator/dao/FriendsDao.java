package com.techelevator.dao;

import com.techelevator.model.Friend;

import java.util.List;

public interface FriendsDao {
    Friend getFriendsByUserId (int userId);
    Friend addFriend (int userId, int friendId);
}
