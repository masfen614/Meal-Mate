package com.techelevator.model;

import java.util.List;

public class Friend {

    private int userId;
    private List<Integer> friendsList;

    public Friend() {}

    public Friend(int userId, List<Integer> friendsList) {
        this.userId = userId;
        this.friendsList = friendsList;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public List<Integer> getFriendsList() {
        return friendsList;
    }

    public void setFriendsList(List<Integer> friendsList) {
        this.friendsList = friendsList;
    }

    public void addFriendToList(int friendId) {
        friendsList.add(friendId);
    }
    @Override
    public String toString() {
        return "Friend{" +
                "userId=" + userId +
                ", friendsList=" + friendsList.toString() +
                '}';
    }
}