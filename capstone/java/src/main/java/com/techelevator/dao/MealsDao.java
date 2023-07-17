package com.techelevator.dao;

import com.techelevator.model.Food;
import com.techelevator.model.Meal;
import com.techelevator.model.WeekDataDto;

import java.time.LocalDate;
import java.util.List;

public interface MealsDao {
    List<Meal> getRecentMeals(int userId);
    List<Meal> getMealsByDate(LocalDate Day, int userId);
    List<Meal> getMealsForWeek(int weekId, int userId);
    Meal getMealsByID(int mealId);
    Meal createMeal (Meal newMeal);
    void addFoodToMeal(int foodId, int mealId);
}
