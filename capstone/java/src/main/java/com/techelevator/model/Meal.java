package com.techelevator.model;

import java.time.LocalDate;
import java.util.List;

public class Meal {

    private int mealId;
    private int userId;
    private String mealType;
    private List<Food> foodItems;
    private double numberOfServings;
    private LocalDate dateConsumed;
    private boolean isCompleted;

    public Meal() {}

    public Meal(int mealId, int userId, String mealType, List<Food> foodItems, double numberOfServings,
                LocalDate dateConsumed, boolean isCompleted) {
        this.mealId = mealId;
        this.userId = userId;
        this.mealType = mealType;
        this.foodItems = foodItems;
        this.numberOfServings = numberOfServings;
        this.dateConsumed = dateConsumed;
        this.isCompleted = isCompleted;
    }

    public int getMealId() {
        return mealId;
    }

    public void setMealId(int mealId) {
        this.mealId = mealId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public void setFoodItem(List<Food> foodItems) {
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

    @Override
    public String toString() {
        return "Meal{" +
                "mealId=" + mealId +
                ", userId=" + userId +
                ", mealType='" + mealType + '\'' +
                ", servingSize=" +
                ", numberOfServings=" + numberOfServings +
                ", dateConsumed=" + dateConsumed +
                ", isCompleted=" + isCompleted +
                '}';
    }
}
