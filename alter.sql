SELECT * from person2;

--- creating a new table

CREATE TABLE test_table (
    id SERIAL PRIMARY KEY,
    name VARCHAR(25) NOT NULL
)

ALTER TABLE person2
ADD COLUMN email VARCHAR(20) DEFAULT 'default@mail.com' NOT NULL,
ADD COLUMN isActive BOOLEAN DEFAULT 'true'

-- delete a column from table
ALTER Table person2 DROP COLUMN email

-- insert a new column
INSERT INTO
    person2
values (
        4,
        'john',
        45,
        'test@gmail.com'
    )
    -- rename table column name
ALTER Table person2
RENAME COLUMN persorn_age to person_age

--update a existign data type
ALTER Table person2 alter COLUMN user_name type VARCHAR(30)

--add a constraint value to column
ALTER Table person2 alter COLUMN person_age set NOT NULL

-- remove a constraint value from column
ALTER Table person2 alter COLUMN person_age DROP NOT NULL

--------------- TODO:  day two ------------------------

-- set a unique constraint value

ALTER Table person2
ADD constraint unique_person2_person_age UNIQUE (person_age)

-- remove  unique constraint value from column

ALTER Table person2 DROP constraint unique_person2_person_age

--- to delete a entrie table
DROP TABLE person2

-- to delete entire table data
TRUNCATE TABLE person2