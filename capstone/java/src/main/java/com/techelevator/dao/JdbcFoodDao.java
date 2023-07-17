package com.techelevator.dao;

import com.techelevator.model.Food;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcFoodDao implements FoodDao{

    private final JdbcTemplate jdbcTemplate;

    public JdbcFoodDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Food getFoodById(int foodId) {
        Food food = null;
        String sql = "SELECT food_brand, food_name, serving_size, calories, total_fat, saturated_fat, " +
                "unsaturated_fat, trans_fat, cholesterol, sodium, total_carbohydrates, " +
                "dietary_fiber, total_sugars, added_sugars, protein " +
                "FROM food WHERE food_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, foodId);
        if (results.next()) {
            food = mapRowToFood(results);
        }
        return food;
    }

    @Override
    public Food createFood(Food newFood) {
        Integer newFoodId;
        String sql = "INSERT INTO food (food_brand, food_name, serving_size, calories, total_fat, saturated_fat, " +
            "unsaturated_fat, trans_fat, cholesterol, sodium, total_carbohydrates, dietary_fiber, " +
            "total_sugars, added_sugars, protein) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) " +
            "RETURNING food_id;";
        try {
            newFoodId = jdbcTemplate.queryForObject(sql, Integer.class, newFood.getFoodBrand(), newFood.getFoodName(), newFood.getServingSize(),
                    newFood.getCalories(), newFood.getTotalFat(), newFood.getSaturatedFat(), newFood.getUnsaturatedFat(),
                    newFood.getTransFat(), newFood.getCholesterol(), newFood.getSodium(), newFood.getTotalCarbohydrates(),
                    newFood.getDietaryFiber(), newFood.getTotalSugars(), newFood.getAddedSugars() ,
                    newFood.getProtein());
            newFood.setFoodId(newFoodId);
        } catch (NullPointerException e) {
            return null;
        }
        return newFood;
    }

    private Food mapRowToFood(SqlRowSet results) {
        Food food = new Food();
        food.setFoodBrand(results.getString("food_brand"));
        food.setFoodName(results.getString("food_name"));
        food.setServingSize(results.getDouble("serving_size"));
        food.setCalories(results.getInt("calories"));
        food.setTotalFat(results.getInt("total_fat"));
        food.setSaturatedFat(results.getInt("saturated_fat"));
        food.setUnsaturatedFat(results.getInt("unsaturated_fat"));
        food.setTransFat(results.getInt("trans_fat"));
        food.setCholesterol(results.getInt("cholesterol"));
        food.setSodium(results.getInt("sodium"));
        food.setTotalCarbohydrates(results.getInt("total_carbohydrates"));
        food.setDietaryFiber(results.getInt("dietary_fiber"));
        food.setTotalSugars(results.getInt("total_sugars"));
        food.setAddedSugars(results.getInt("added_sugars"));
        food.setProtein(results.getInt("protein"));
        return food;
    }
}