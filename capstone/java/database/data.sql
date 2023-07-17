BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES('Shaneful','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');
INSERT INTO users (username,password_hash,role) VALUES ('LoovyTunes17','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('MasCousinFinny','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('CentralPerker24','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');

INSERT INTO profiles (user_id, first_name, last_name, email, phone_number, age, sex, height, current_weight, goal_weight, daily_calories, notification) VALUES (
(SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Shane', 'Smith', 'sugarShane34@gmail.com', '813-555-5555', 35, 'Male', '5.8', 190, 175, 1995, true);
INSERT INTO profiles (user_id, first_name, last_name, email, phone_number, age, sex, height, current_weight, goal_weight, daily_calories, notification) VALUES (
(SELECT user_id AS second_user FROM users WHERE username = 'LoovyTunes17'), 'Loovensky', 'Louis', 'LoovyTunes17@hotmail.com', '772-333-5555', 30, 'Male', '5.11', 180, 195, 2010, true);
INSERT INTO profiles (user_id, first_name, last_name, email, phone_number, age, sex, height, current_weight, goal_weight, daily_calories, notification) VALUES (
(SELECT user_id AS third_user FROM users WHERE username = 'MasCousinFinny'), 'Masfen', 'Osman', 'MOsman@aol.com', '240-222-4444', 28, 'Male', '5.9', 200, 215, 2023, true);
INSERT INTO profiles (user_id, first_name, last_name, email, phone_number, age, sex, height, current_weight, goal_weight, daily_calories, notification) VALUES (
(SELECT user_id AS fourth_user FROM users WHERE username = 'CentralPerker24'), 'Rachel', 'Leonard', 'MOsman@aol.com', '240-222-4444', 28, 'Male', '5.9', 200, 215, 2023, true);

-- January Meals --
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/15/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/15/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/15/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/15/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/16/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/16/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/16/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/16/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/17/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/17/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/17/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/17/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/18/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/18/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/18/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/18/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/19/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/19/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/19/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/19/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/20/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/20/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/20/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/20/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/21/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/21/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/21/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/21/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/22/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/22/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/22/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/22/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/23/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/23/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/23/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/23/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/24/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/24/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/24/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/24/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/25/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/25/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/25/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/25/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/26/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/26/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/26/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/26/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/27/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/27/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/27/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/27/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/28/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/28/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/28/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/28/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/29/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/29/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/29/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/29/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/30/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/30/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/30/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '01/30/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '01/31/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '01/31/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '01/31/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 

-- February Meals --
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '02/01/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '02/01/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '02/01/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '02/01/2023', true);

VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '02/02/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '02/02/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '02/02/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '02/02/2023', true);

VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '02/03/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '02/03/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '02/03/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '02/03/2023', true);

VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '02/04/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '02/04/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '02/04/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '02/04/2023', true);

VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '02/05/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '02/05/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '02/05/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '02/05/2023', true);

VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '02/06/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '02/06/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '02/06/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '02/06/2023', true);

VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '02/07/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '02/07/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '02/07/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '02/07/2023', true);

VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '02/08/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '02/08/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '02/08/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '02/08/2023', true);

VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '02/09/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '02/09/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '02/09/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '02/09/2023', true);

VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Breakfast', 1.0, '02/10/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Lunch', 2.0, '02/10/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Dinner', 1.5, '02/10/2023', true);
INSERT INTO meals (user_id, meal_type, number_of_servings, date_consumed, is_completed) 
VALUES ((SELECT user_id AS first_user FROM users WHERE username = 'Shaneful'), 'Snack', 1.5, '02/10/2023', true);

-- Food Table --
INSERT INTO food (food_brand, food_name, serving_size, calories, total_fat, saturated_fat, unsaturated_fat, trans_fat, cholesterol, sodium, total_carbohydrates, dietary_fiber, total_sugars, 
-- 1				
added_sugars, protein) VALUES ('Hormel', 'Bacon', 1.0, 100, 8, 5, 1, 0, 230, 10, null, 3, 1, 10, 8);
INSERT INTO food (food_brand, food_name, serving_size, calories, total_fat, saturated_fat, unsaturated_fat, trans_fat, cholesterol, sodium, total_carbohydrates, dietary_fiber, total_sugars, 
-- 2
added_sugars, protein) VALUES ('Lucerne', 'Eggs', 2.0, 125, 1, 3, 2, 1, 100, 8, 5, 1, 3, 7, 3);
INSERT INTO food (food_brand, food_name, serving_size, calories, total_fat, saturated_fat, unsaturated_fat, trans_fat, cholesterol, sodium, total_carbohydrates, dietary_fiber, total_sugars, 
-- 3
added_sugars, protein) VALUES ('Black Rifle', 'Coffee', 1.0, 0, 1, 12, 4, 7, 40, 9, 15, 2, 9, 5, 5);
INSERT INTO food (food_brand, food_name, serving_size, calories, total_fat, saturated_fat, unsaturated_fat, trans_fat, cholesterol, sodium, total_carbohydrates, dietary_fiber, total_sugars, 
-- 4
added_sugars, protein) VALUES ('Thomas', 'Bagel', 1.0, 120, 3, 5, 20, 10, 15, 80, 50, 12, 30, 8, 7);
INSERT INTO food (food_brand, food_name, serving_size, calories, total_fat, saturated_fat, unsaturated_fat, trans_fat, cholesterol, sodium, total_carbohydrates, dietary_fiber, total_sugars, 
-- 5
added_sugars, protein) VALUES ('Digorno', 'Pizza', 1.0, 1200, 80, 50, 10, 90, 2300, 100, 60, 30, 10, 100, 80);
INSERT INTO food (food_brand, food_name, serving_size, calories, total_fat, saturated_fat, unsaturated_fat, trans_fat, cholesterol, sodium, total_carbohydrates, dietary_fiber, total_sugars, 
-- 6
added_sugars, protein) VALUES ('Publix', 'Ham Sandwich', 1.0, 125, 1, 3, 2, 1, 100, 8, 5, 1, 3, 7, 3);
INSERT INTO food (food_brand, food_name, serving_size, calories, total_fat, saturated_fat, unsaturated_fat, trans_fat, cholesterol, sodium, total_carbohydrates, dietary_fiber, total_sugars, 
-- 7
added_sugars, protein) VALUES ('Lays', 'Potato Chips', 1.0, 0, 1, 12, 4, 7, 40, 9, 15, 2, 9, 5, 5);
INSERT INTO food (food_brand, food_name, serving_size, calories, total_fat, saturated_fat, unsaturated_fat, trans_fat, cholesterol, sodium, total_carbohydrates, dietary_fiber, total_sugars, 
-- 8
added_sugars, protein) VALUES ('Andys', 'Potato', 1.0, 80, 4, 3, 2, 11, 16, 90, 40, 14, 50, 9, 3);
INSERT INTO food (food_brand, food_name, serving_size, calories, total_fat, saturated_fat, unsaturated_fat, trans_fat, cholesterol, sodium, total_carbohydrates, dietary_fiber, total_sugars, 
-- 9
added_sugars, protein) VALUES ('Pepsi', 'Pepsi-cola', 1.0, 150, 1, 12, 4, 7, 40, 9, 15, 2, 9, 5, 5);
INSERT INTO food (food_brand, food_name, serving_size, calories, total_fat, saturated_fat, unsaturated_fat, trans_fat, cholesterol, sodium, total_carbohydrates, dietary_fiber, total_sugars, 
-- 10
added_sugars, protein) VALUES ('Lipton', 'Sweet Tea', 1.0, 330, 4, 3, 2, 11, 16, 90, 40, 14, 70, 70, 0);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (1, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (1, 2);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (2, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (2, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (3, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (3, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (4, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (4, 4);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (5, 8);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (5, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (6, 4);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (6, 8);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (7, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (7, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (7, 2);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (8, 5);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (9, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (9, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (10, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (10, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (11, 4);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (11, 7);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (12, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (12, 8);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (13, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (13, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (14, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (14, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (15, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (15, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (16, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (16, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (17, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (17, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (18, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (18, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (19, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (19, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (20, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (20, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (21, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (21, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (22, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (22, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (23, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (23, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (24, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (24, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (25, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (25, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (26, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (26, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (27, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (27, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (28, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (28, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (29, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (29, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (30, 4);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (30, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (31, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (31, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (32, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (32, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (33, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (33, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (34, 2);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (34, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (35, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (35, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (36, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (36, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (37, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (37, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (38, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (38, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (39, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (39, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (40, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (40, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (41, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (41, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (42, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (42, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (43, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (43, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (44, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (44, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (45, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (45, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (46, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (46, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (47, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (47, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (48, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (48, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (49, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (49, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (50, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (50, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (51, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (51, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (52, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (52, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (53, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (53, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (54, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (54, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (55, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (55, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (56, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (56, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (57, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (57, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (58, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (58, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (59, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (59, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (60, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (60, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (61, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (61, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (62, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (62, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (63, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (63, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (64, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (64, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (65, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (65, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (66, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (66, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (67, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (67, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (68, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (68, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (69, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (69, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (69, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (70, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (71, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (71, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (72, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (72, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (73, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (73, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (74, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (74, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (75, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (75, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (76, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (76, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (77, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (77, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (78, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (78, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (79, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (79, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (80, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (80, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (81, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (81, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (82, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (82, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (83, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (83, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (84, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (84, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (85, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (85, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (86, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (86, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (87, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (87, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (88, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (88, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (89, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (89, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (90, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (90, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (91, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (91, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (92, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (92, 3);

INSERT INTO food_to_meals (meal_id, food_id) VALUES (93, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (93, 3);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (94, 5);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (95, 9);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (96, 6);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (97, 10);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (98, 1);
INSERT INTO food_to_meals (meal_id, food_id) VALUES (98, 3);

INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 64.0, '2023-01-16');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 30.0, '2023-01-17');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 55.0, '2023-01-18');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 62.0, '2023-01-19');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 49.0, '2023-01-20');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 14.0, '2023-01-21');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 0.0, '2023-01-22');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 19.0, '2023-01-23');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 47.0, '2023-01-24');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 12.0, '2023-01-25');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 48.0, '2023-01-26');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 48.0, '2023-01-27');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 48.0, '2023-01-28');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 40.0, '2023-01-29');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 48.0, '2023-01-30');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 10.0, '2023-01-31');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 24.0, '2023-02-01');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 16.0, '2023-02-02');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 48.0, '2023-02-03');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 0.0, '2023-02-04');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 40.0, '2023-02-05');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 32.0, '2023-02-06');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 16.0, '2023-02-07');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 32.0, '2023-02-08');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 48.0, '2023-02-09');
INSERT INTO hydration (user_id, hydration_total, hydration_date) VALUES (1, 8.0, '2023-02-10');

COMMIT TRANSACTION;