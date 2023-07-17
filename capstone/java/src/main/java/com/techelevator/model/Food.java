package com.techelevator.model;

public class Food {

    private Integer foodId;
    private String foodBrand;
    private String foodName;
    private double servingSize;
    private Integer calories;
    private Integer totalFat;
    private Integer saturatedFat;
    private Integer unsaturatedFat;
    private Integer transFat;
    private Integer cholesterol;
    private Integer sodium;
    private Integer totalCarbohydrates;
    private Integer dietaryFiber;
    private Integer totalSugars;
    private Integer addedSugars;
    private Integer protein;

    public Food() {}

    public Food(Integer foodId, String foodBrand, String foodName, double servingSize, Integer calories, Integer totalFat, Integer saturatedFat, Integer unsaturatedFat, Integer transFat, Integer cholesterol, Integer sodium, Integer totalCarbohydrates, Integer dietaryFiber, Integer totalSugars, Integer addedSugars, Integer protein) {
        this.foodId = foodId;
        this.foodBrand = foodBrand;
        this.foodName = foodName;
        this.servingSize = servingSize;
        this.calories = calories;
        this.totalFat = totalFat;
        this.saturatedFat = saturatedFat;
        this.unsaturatedFat = unsaturatedFat;
        this.transFat = transFat;
        this.cholesterol = cholesterol;
        this.sodium = sodium;
        this.totalCarbohydrates = totalCarbohydrates;
        this.dietaryFiber = dietaryFiber;
        this.totalSugars = totalSugars;
        this.addedSugars = addedSugars;
        this.protein = protein;
    }

    public Integer getFoodId() {
        return foodId;
    }

    public void setFoodId(Integer foodId) {
        this.foodId = foodId;
    }

    public String getFoodBrand() {
        return foodBrand;
    }

    public void setFoodBrand(String foodBrand) {
        this.foodBrand = foodBrand;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public double getServingSize() {
        return servingSize;
    }

    public void setServingSize(double servingSize) {
        this.servingSize = servingSize;
    }

    public Integer getCalories() {
        return calories;
    }

    public void setCalories(Integer calories) {
        this.calories = calories;
    }

    public Integer getTotalFat() {
        return totalFat;
    }

    public void setTotalFat(Integer totalFat) {
        this.totalFat = totalFat;
    }

    public Integer getSaturatedFat() {
        return saturatedFat;
    }

    public void setSaturatedFat(Integer saturatedFat) {
        this.saturatedFat = saturatedFat;
    }

    public Integer getUnsaturatedFat() {
        return unsaturatedFat;
    }

    public void setUnsaturatedFat(Integer unsaturatedFat) {
        this.unsaturatedFat = unsaturatedFat;
    }

    public Integer getTransFat() {
        return transFat;
    }

    public void setTransFat(Integer transFat) {
        this.transFat = transFat;
    }

    public Integer getCholesterol() {
        return cholesterol;
    }

    public void setCholesterol(Integer cholesterol) {
        this.cholesterol = cholesterol;
    }

    public Integer getSodium() {
        return sodium;
    }

    public void setSodium(Integer sodium) {
        this.sodium = sodium;
    }

    public Integer getTotalCarbohydrates() {
        return totalCarbohydrates;
    }

    public void setTotalCarbohydrates(Integer totalCarbohydrates) {
        this.totalCarbohydrates = totalCarbohydrates;
    }

    public Integer getDietaryFiber() {
        return dietaryFiber;
    }

    public void setDietaryFiber(Integer dietaryFiber) {
        this.dietaryFiber = dietaryFiber;
    }

    public Integer getTotalSugars() {
        return totalSugars;
    }

    public void setTotalSugars(Integer totalSugars) {
        this.totalSugars = totalSugars;
    }

    public Integer getAddedSugars() {
        return addedSugars;
    }

    public void setAddedSugars(Integer addedSugars) {
        this.addedSugars = addedSugars;
    }

    public Integer getProtein() {
        return protein;
    }

    public void setProtein(Integer protein) {
        this.protein = protein;
    }

    @Override
    public String toString() {
        return "Food{" +
                "foodId=" + foodId +
                ", foodName='" + foodName + '\'' +
                ", servingSize=" + servingSize +
                ", calories=" + calories +
                ", totalFat=" + totalFat +
                ", saturatedFat=" + saturatedFat +
                ", unsaturatedFat=" + unsaturatedFat +
                ", transFat=" + transFat +
                ", cholesterol=" + cholesterol +
                ", sodium=" + sodium +
                ", totalCarbohydrates=" + totalCarbohydrates +
                ", dietaryFiber=" + dietaryFiber +
                ", totalSugars=" + totalSugars +
                ", addedSugars=" + addedSugars +
                ", protein=" + protein +
                '}';
    }
}
