package com.techelevator.dao;

import com.techelevator.model.Food;

public interface FoodDao {
    Food getFoodById (int foodId);
    Food createFood (Food newFood);
}
