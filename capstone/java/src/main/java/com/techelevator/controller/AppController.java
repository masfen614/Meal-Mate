package com.techelevator.controller;

import com.techelevator.dao.*;
import com.techelevator.model.*;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@RestController
@PreAuthorize("isAuthenticated()")
@CrossOrigin
public class AppController {

    private final UserDao userDao;
    private final ProfilesDao profilesDao;
    private final MealsDao mealsDao;
    private final FoodDao foodDao;
    private final HydrationDao hydrationDao;
    private final FriendsDao friendsDao;

    public AppController(UserDao userDao, ProfilesDao profilesDao ,MealsDao mealsDao, FoodDao foodDao,
     HydrationDao hydrationDao, FriendsDao friendsDao) {
        this.userDao = userDao;
        this.profilesDao = profilesDao;
        this.mealsDao = mealsDao;
        this.foodDao = foodDao;
        this.hydrationDao = hydrationDao;
        this.friendsDao = friendsDao;
    }

    @GetMapping(path = "/my-profile")
    public Profile getProfile(Principal principal) {
        return profilesDao.getProfileByUserId(findUserId(principal));
    }

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping(path = "/create-profile")
    public void createProfile(@RequestBody Profile newProfile, Principal principal) {
        profilesDao.createProfile(newProfile, findUserId(principal));
    }

    @GetMapping(path = "/recent-meals")
    public List<Meal> getRecentMeals(Principal principal){
        return mealsDao.getRecentMeals(findUserId(principal));
    }

    @GetMapping(path = "/get-meals-for-week")
    public List<Meal> getWeeklyMealData(@RequestParam int weekId, Principal principal) {
        return mealsDao.getMealsForWeek(weekId, findUserId(principal));
    }

    @GetMapping(path = "/get-hydration-for-week")
    public List<Hydration> getWeeklyHydrationData(@RequestParam int weekId, Principal principal) {
        return hydrationDao.getHydrationForWeek(weekId, findUserId(principal));
    }

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping(path = "/add-food/{mealId}")
    public void addFood(@PathVariable int mealId, @RequestBody Food newFood) {
        mealsDao.getMealsByID(mealId);
        mealsDao.addFoodToMeal(foodDao.createFood(newFood).getFoodId(), mealId);
    }

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping(path = "/add-meal")
    public int addMeal(@RequestBody Meal newMeal) {
        LocalDate timestamp = LocalDate.now();
        newMeal.setDateConsumed(timestamp);
        return mealsDao.createMeal(newMeal).getMealId();
    }

    @GetMapping(path = "/get-meals-by-day")
    public List<Meal> getMealsByDay(@RequestParam String day, Principal principal) {
        LocalDate date = LocalDate.parse(day);
        return mealsDao.getMealsByDate(date, findUserId(principal));
    }

    @ResponseStatus(HttpStatus.ACCEPTED)
    @PutMapping(path = "/change-hydration")
    public void changeHydrationAmount(@RequestBody Hydration newHydration) {
        hydrationDao.setHydrationByUserId(newHydration);
    }


    @ResponseStatus(HttpStatus.CREATED)
    @GetMapping(path = "/add-friend")
    public Friend addFriend(@RequestBody Integer friendId, Principal principal) {
        return friendsDao.addFriend(findUserId(principal), friendId);
    }

    private int findUserId (Principal principal) {
        return userDao.findIdByUsername(principal.getName());
    }
}
