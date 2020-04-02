--The grocery TYPE should be an ENUM 
DROP TYPE IF EXISTS grocery;
CREATE TYPE grocery AS ENUM (
    'Main',
    'Snack',
    'Lunch',
    'Breakfast'
);

--table should have 6 columns. None of the columns should allow null values.
CREATE TABLE IF NOT EXISTS shopping_list (
--A primary key column id
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    price decimal(10, 2) NOT NULL,
--A date_added column that should default to now().
    date_added TIMESTAMP DEFAULT now() NOT NULL,
    checked BOOLEAN DEFAULT false,
    category grocery NOT NULL
);