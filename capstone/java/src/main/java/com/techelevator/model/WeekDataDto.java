package com.techelevator.model;

import java.time.LocalDate;
import java.util.List;

public class WeekDataDto {

    // Universal Properties
    private int userId;

    // Meal Properties
    private int mealId;
    private String mealType;
    private List<Food> foodItems;
    private double numberOfServings;
    private LocalDate dateConsumed;
    private boolean isCompleted;

    // Hydration Properties
    private double hydrationTotal;
    private LocalDate hydrationDate;

    public WeekDataDto() {};

    public WeekDataDto(int userId, int mealId, String mealType, List<Food> foodItems, double numberOfServings, LocalDate dateConsumed, boolean isCompleted, double hydrationTotal, LocalDate hydrationDate) {
        this.userId = userId;
        this.mealId = mealId;
        this.mealType = mealType;
        this.foodItems = foodItems;
        this.numberOfServings = numberOfServings;
        this.dateConsumed = dateConsumed;
        this.isCompleted = isCompleted;
        this.hydrationTotal = hydrationTotal;
        this.hydrationDate = hydrationDate;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getMealId() {
        return mealId;
    }

    public void setMealId(int mealId) {
        this.mealId = mealId;
    }

    public String getMealType() {
        return mealType;
    }

    public void setMealType(String mealType) {
        this.mealType = mealType;
    }

    public List<Food> getFoodItems() {
        return foodItems;
    }

    public void setFoodItems(List<Food> foodItems) {
        this.foodItems = foodItems;
    }

    public double getNumberOfServings() {
        return numberOfServings;
    }

    public void setNumberOfServings(double numberOfServings) {
        this.numberOfServings = numberOfServings;
    }

    public LocalDate getDateConsumed() {
        return dateConsumed;
    }

    public void setDateConsumed(LocalDate dateConsumed) {
        this.dateConsumed = dateConsumed;
    }

    public boolean isCompleted() {
        return isCompleted;
    }

    public void setCompleted(boolean completed) {
        isCompleted = completed;
    }

    public double getHydrationTotal() {
        return hydrationTotal;
    }

    public void setHydrationTotal(double hydrationTotal) {
        this.hydrationTotal = hydrationTotal;
    }

    public LocalDate getHydrationDate() {
        return hydrationDate;
    }

    public void setHydrationDate(LocalDate hydrationDate) {
        this.hydrationDate = hydrationDate;
    }
}
