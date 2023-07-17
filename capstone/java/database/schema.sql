BEGIN TRANSACTION;

DROP TABLE IF EXISTS users, profiles, hydration, food, friends_list,  meals, food_to_meals CASCADE;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE profiles(
	user_id int NOT NULL,
	first_name varchar(50),
	last_name varchar (50),
	email varchar(50),
	phone_number varchar(15),
	age int,
	sex varchar(10),
	height decimal,
	current_weight decimal,
	goal_weight decimal,
	daily_calories int,
	notification boolean,
	CONSTRAINT FK_profiles_users FOREIGN KEY (user_id) REFERENCES users (user_id)	
);

CREATE TABLE hydration(
	user_id int NOT NULL,
	hydration_total decimal,
	hydration_date date,
	CONSTRAINT FK_hydration_users FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE food(
	food_id SERIAL,
	food_brand varchar (75),
	food_name varchar (50),
	serving_size decimal,
	calories int,
	total_fat int,
	saturated_fat int,
	unsaturated_fat int,
	trans_fat int,
	cholesterol int,
	sodium int,
	total_carbohydrates int,
	dietary_fiber int,
	total_sugars int,
	added_sugars int,
	protein int,
	CONSTRAINT PK_food PRIMARY KEY (food_id)
);

CREATE TABLE meals(
	meal_id SERIAL,
	user_id int,
	meal_type varchar(10),
	number_of_servings decimal,
	date_consumed date,
	is_completed boolean,
	CONSTRAINT PK_meals PRIMARY KEY (meal_id),
	CONSTRAINT FK_meals_users FOREIGN KEY (user_id) REFERENCES users (user_id),
	CONSTRAINT CHK_meal_type CHECK (meal_type IS NOT NULL AND meal_type IN ('Breakfast', 'Lunch', 'Dinner','Snack'))
);

CREATE TABLE food_to_meals (
	meal_id int NOT NULL,
	food_id int NOT NULL,
	CONSTRAINT FK_food_to_meal FOREIGN KEY (food_id) REFERENCES food (food_id),
	CONSTRAINT FK_meal_to_food FOREIGN KEY (meal_id) REFERENCES meals (meal_id)
);

CREATE TABLE friends_list(
	user_id int NOT NULL,
	friends_id int,
	CONSTRAINT PK_friends_list PRIMARY KEY (user_id),
	CONSTRAINT FK_frineds_list_users FOREIGN KEY (user_id) REFERENCES users (user_id)
);

COMMIT TRANSACTION;