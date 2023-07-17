package com.techelevator.dao;

import com.techelevator.model.Profile;

public interface ProfilesDao {
    boolean createProfile(Profile newProfile, int userId);
    Profile getProfileByUserId(int userId);
}
