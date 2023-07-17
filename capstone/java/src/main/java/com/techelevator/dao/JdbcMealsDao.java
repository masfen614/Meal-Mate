package com.techelevator.dao;

import com.techelevator.model.Food;
import com.techelevator.model.Meal;
import com.techelevator.model.WeekDataDto;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcMealsDao implements MealsDao{

    private final JdbcTemplate jdbcTemplate;
    private JdbcFoodDao jdbcFoodDao;

    public JdbcMealsDao(JdbcTemplate jdbcTemplate, JdbcFoodDao jdbcFoodDao) {
        this.jdbcTemplate = jdbcTemplate;
        this.jdbcFoodDao = jdbcFoodDao;
    }

    @Override
    public List<Meal> getRecentMeals(int userId) {
        List<Meal> recentMealList = new ArrayList<>();
        String sql = "SELECT meal_id FROM meals WHERE user_id = ? AND date_consumed " +
                ">= DATEADD(day, -7, GETDATE()) AND is_completed = true;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId);
        while(results.next()){
            // While there are more meals, assign currentMeal to next meal_id
            Meal currentMeal = getMealsByID(results.getInt("meal_id"));
            // Add currentMeal to the list
            recentMealList.add(currentMeal);
        }
        // Return List of Meals
        return recentMealList;
    }

    @Override
    public List<Meal> getMealsByDate(LocalDate day, int userId) {
        List<Meal> mealsForDate = new ArrayList<>();
        String sql = "SELECT meal_id FROM meals WHERE user_id = ? AND date_consumed = ? ";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId, day);
        while (results.next()) {
            // while there are more meals, assign currentMeal to next meal_id
            Meal currentMeal = getMealsByID(results.getInt("meal_id"));
            // Add currentMeal to mealsForDate
            mealsForDate.add(currentMeal);
        }
        // return list of meals
        return mealsForDate;
    }

    @Override
    public List<Meal> getMealsForWeek(int weekId, int userId) {
        LocalDate startDate;
        LocalDate endDate;
        if (weekId == 1) {
            startDate = LocalDate.parse("2023-01-16");
            endDate = LocalDate.parse("2023-01-22");
        } else if (weekId == 2) {
            startDate = LocalDate.parse("2023-01-23");
            endDate = LocalDate.parse("2023-01-29");
        } else if (weekId == 3) {
            startDate = LocalDate.parse("2023-01-30");
            endDate = LocalDate.parse("2023-02-05");
        } else if (weekId == 4) {
            startDate = LocalDate.parse("2023-02-06");
            endDate = LocalDate.parse("2023-02-12");
        }
        else {
            return null;
        }
        List<Meal> mealsForWeek = new ArrayList<>();
        String sql = "SELECT * FROM meals WHERE user_id = ? AND date_consumed >= ? AND date_consumed <= ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userId, startDate, endDate);
        while (results.next()) {
            Meal meal = getMealsByID(results.getInt("meal_id"));
            mealsForWeek.add(meal);
        }
        return mealsForWeek;
    }

    @Override
    public Meal getMealsByID(int mealId) {
        Meal meal = new Meal();
        // Sort through table for data from completed meal that match mealId
        String sql = "SELECT meal_id, user_id, meal_type, number_of_servings, date_consumed, is_completed " +
                "FROM meals WHERE meal_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, mealId);
        if (results.next()) {
            // map the results to the meal object
            meal = mapRowToMeal(results);
        }
        return meal;
    }

    @Override
    public Meal createMeal(Meal newMeal) {
        Integer newMealId;
        String sql = "INSERT INTO meals (user_id, meal_type, number_of_servings, " +
                "date_consumed, is_completed) VALUES (?, ?, ?, ?, ?) RETURNING meal_id;";
        try {
            newMealId = jdbcTemplate.queryForObject(sql, Integer.class, newMeal.getUserId(), newMeal.getMealType(),
                    newMeal.getNumberOfServings(), newMeal.getDateConsumed(),
                    newMeal.isCompleted());
            newMeal.setMealId(newMealId);
        } catch (NullPointerException e) {
            return null;
        }
        return newMeal;
    }

    @Override
    public void addFoodToMeal(int foodId, int mealId) {
        String sql = "INSERT INTO food_to_meals (food_id, meal_id) VALUES (?, ?);";
        jdbcTemplate.update(sql, foodId, mealId);
    }

    private Meal mapRowToMeal(SqlRowSet results) {
        Meal meal = new Meal();
        meal.setMealId(results.getInt("meal_id"));
        meal.setUserId(results.getInt("user_id"));
        meal.setMealType(results.getString("meal_type"));
        meal.setFoodItem(getFoodsFromMeal(meal.getMealId()));
        meal.setNumberOfServings(results.getDouble("number_of_servings"));
        try {
            meal.setDateConsumed(results.getDate("date_consumed").toLocalDate());
            meal.setCompleted(results.getBoolean("is_completed"));
        }
       catch (NullPointerException e){
            meal = null;
       }
        return meal;
    }

    private List<Food> getFoodsFromMeal(int mealId) {
        List<Food> foodInMeals = new ArrayList<>();
        String sql = "SELECT f.food_id FROM food AS f JOIN food_to_meals AS fm " +
                "ON fm.food_id = f.food_id WHERE fm.meal_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, mealId);
        while (results.next()) {
            foodInMeals.add(jdbcFoodDao.getFoodById(results.getInt("food_id")));
        }
        return foodInMeals;
    }
}
