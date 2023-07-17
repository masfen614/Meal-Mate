package com.techelevator.model;

public class Profile {

    private int userId;
    private String firstName;
    private String lastName;
    private String email;
    private String phoneNumber;
    private int age;
    private String sex;
    private double height;
    private double currentWeight;
    private double goalWeight;
    private int dailyCalories;
    private boolean notifications;

    public Profile() {}

    public Profile(int userId, String firstName, String lastName, String email, String phoneNumber, int age, String sex,
                   double height, double currentWeight, double goalWeight, int daileCalories, boolean notifications) {
        this.userId = userId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.age = age;
        this.sex = sex;
        this.height = height;
        this.currentWeight = currentWeight;
        this.goalWeight = goalWeight;
        this.dailyCalories = daileCalories;
        this.notifications = notifications;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getCurrentWeight() {
        return currentWeight;
    }

    public void setCurrentWeight(double currentWeight) {
        this.currentWeight = currentWeight;
    }

    public double getGoalWeight() {
        return goalWeight;
    }

    public void setGoalWeight(double goalWeight) {
        this.goalWeight = goalWeight;
    }

    public int getDailyCalories() {
        return dailyCalories;
    }

    public void setDailyCalories(int daileCalories) {
        this.dailyCalories = daileCalories;
    }

    public boolean isNotifications() {
        return notifications;
    }

    public void setNotifications(boolean notifications) {
        this.notifications = notifications;
    }

    @Override
    public String toString() {
        return "Profile{" +
                "userId=" + userId +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", phoneNumber=" + phoneNumber +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                ", height=" + height +
                ", currentWeight=" + currentWeight +
                ", goalWeight=" + goalWeight +
                ", dailyCalories=" + dailyCalories +
                ", notifications=" + notifications +
                '}';
    }
}
