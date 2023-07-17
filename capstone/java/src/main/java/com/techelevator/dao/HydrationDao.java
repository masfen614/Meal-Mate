package com.techelevator.dao;

import com.techelevator.model.Hydration;
import com.techelevator.model.WeekDataDto;

import java.time.LocalDate;
import java.util.List;

public interface HydrationDao {
    Hydration getDatesHydrationByUserId(int userId, LocalDate date);
    void setHydrationByUserId(Hydration newHydration);
    List<Hydration> getHydrationForWeek(int weekId, int userId);
}
