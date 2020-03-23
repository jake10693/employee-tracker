-- Drops the employees_db if it exists currently --
DROP DATABASE IF EXISTS employees_db;
-- Creates the "employees_db" database --
CREATE DATABASE employees_db;

-- Makes it so all of the following code will affect employees_db --
USE employees_db;

-- Creates the table "people" within employees_db --
CREATE TABLE department (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  id INTEGER(100) AUTO_INCREMENT NOT NULL,
  -- Makes a string column called "name" which cannot contain null --
  name VARCHAR(30) NOT NULL,
    -- Name the primary key --
  PRIMARY KEY (id)
);

CREATE TABLE role (
  -- Makes a boolean column called "has_pet" which cannot contain null --
  id INTEGER(100) AUTO_INCREMENT NOT NULL,
  -- Makes a sting column called "pet_name" --
  title VARCHAR(30) NOT NULL, 
  -- Makes an numeric column called "pet_age" --
  salary DECIMAL(100) NOT NULL,
--   to hold reference to department 
  department-id INTEGER(100)
--   name the primary key
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  id INTEGER(50000) AUTO_INCREMENT NOT NULL,
--   to hold employee first name
  first-name VARCHAR(30) NOT NULL,
--   to hold employee last name
  last-name VARCHAR(30) NOT NULL,
--   to hold reference to role employee has
  role-id INTEGER(50000) AUTO_INCREMENT NOT NULL,
--   to hold reference to another employee that manager of the current employee. This field may be null if the employee has no manager
  manager-id INTEGER(50000) AUTO_INCREMENT NOT NULL,
  
  PRIMARY KEY (id)
);

  

-- Creates new rows containing data in all named columns --
INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Ahmed", true, "Rockington", 100);

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Ahmed", true, "Rockington", 100);

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Jacob",true,"Misty",10);

INSERT INTO people (name, has_pet)
VALUES ("Peter", false);

-- Updates the row where the column name is peter --
UPDATE people
SET has_pet = false, pet_name = null, pet_age = null
WHERE id = 4;

DELETE FROM people WHERE 'id' = 2;

SELECT * FROM people;
