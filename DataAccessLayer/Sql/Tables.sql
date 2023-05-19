-- Create the Users table
CREATE TABLE Users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

-- Create the Recipes table
CREATE TABLE Recipes (
  recipe_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  instructions TEXT NOT NULL,
  author_id INT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES Users(user_id)
);

-- Create the Ingredients table
CREATE TABLE Ingredients (
  ingredient_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  measurement_unit VARCHAR(50) NOT NULL
);

-- Create the Recipe_Ingredients table
CREATE TABLE Recipe_Ingredients (
  recipe_id INT NOT NULL,
  ingredient_id INT NOT NULL,
  quantity FLOAT NOT NULL,
  FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredients(ingredient_id),
  PRIMARY KEY (recipe_id, ingredient_id)
);
