package com.techelevator.dao;

import com.techelevator.model.Profile;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcProfilesDao implements ProfilesDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcProfilesDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public boolean createProfile(Profile profile, int userId) {
        // create Profile
        String sql = "INSERT INTO profiles (user_id, first_name, last_name, " +
                "email, phone_number, age, sex, height, current_weight, " +
                "goal_weight, daily_calories, notification) VALUES (?, ?, ?, ?, " +
                "?, ?, ?, ?, ?, ?, ?, ?)";
        // try inserting into database
        try {
            jdbcTemplate.update(sql, userId, profile.getFirstName(), profile.getLastName(),
                    profile.getEmail(), profile.getPhoneNumber(), profile.getAge(), profile.getSex(),
                    profile.getHeight(), profile.getCurrentWeight(), profile.getGoalWeight(),
                    profile.getDailyCalories(), profile.isNotifications());
            // if it fails return false
        } catch (DataAccessException e) {
            return false;
        }
        // if successful return true
        return true;
    }

    @Override
    public Profile getProfileByUserId(int userId) {
        Profile profile = null;
        String sql = "SELECT first_name, last_name, email, phone_number, age," +
                " sex, height, current_weight, goal_weight, daily_calories," +
                " notification FROM profiles WHERE user_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        if (results.next()) {
            profile = mapRowToProfile(results);
        }
        return profile;
    }

    private Profile mapRowToProfile(SqlRowSet results) {
        Profile profile = new Profile();
        profile.setFirstName(results.getString("first_name"));
        profile.setLastName(results.getString("last_name"));
        profile.setEmail(results.getString("email"));
        profile.setPhoneNumber(results.getString("phone_number"));
        profile.setAge(results.getInt("age"));
        profile.setSex(results.getString("sex"));
        profile.setHeight(results.getDouble("height"));
        profile.setCurrentWeight(results.getDouble("current_weight"));
        profile.setGoalWeight(results.getDouble("goal_weight"));
        profile.setDailyCalories(results.getInt("daily_calories"));
        profile.setNotifications(results.getBoolean("notification"));
        return profile;
    }
}
