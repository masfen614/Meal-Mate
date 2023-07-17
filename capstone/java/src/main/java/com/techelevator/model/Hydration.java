package com.techelevator.model;

import java.time.LocalDate;

public class Hydration {

    private int userId;
    private double hydrationTotal;
    private LocalDate hydrationDate;

    public Hydration() {}

    public Hydration(int userId, double hydrationTotal, LocalDate hydrationDate) {
        this.userId = userId;
        this.hydrationTotal = hydrationTotal;
        this.hydrationDate = hydrationDate;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public double getMaximumAmount() {
        double maximumAmount = 64.0;
        return maximumAmount;
    }
}
