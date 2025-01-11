SELECT * from person2;

ALTER TABLE person2
    ADD COLUMN email VARCHAR(20) DEFAULT 'default@mail.com' NOT NULL,
    ADD COLUMN isActive BOOLEAN DEFAULT 'true'

-- delete a column from table
ALTER Table person2 DROP COLUMN email


-- insert a new column
INSERT INTO person2 values ( 4, 'john', 45, 'test@gmail.com' )

-- rename table column name
ALTER Table person2 
   RENAME COLUMN persorn_age to person_age



--update a existign data type 
ALTER Table person2 
   alter COLUMN user_name type VARCHAR(30)

--add a constraint value to column
ALTER Table person2 
   alter COLUMN person_age set NOT NULL 

-- remove a constraint value from column
ALTER Table person2 
   alter COLUMN person_age DROP NOT NULL









-------------- practice table --------------------------------
   -- give me some task with relevent upper code 
   -- add a new column to table
    -- delete a column from table
    -- rename table column name
    -- update a existign data type
    -- add a constraint value to column
    -- remove a constraint value from column
    -- add a new column to table
    -- delete a column from table


---------------------------- practice ------------------------

ALTER TABLE person3 
    ADD COLUMN email_address VARCHAR(25) DEFAULT 'default@example.com'

ALTER Table person3 DROP COLUMN age

ALTER Table person3 RENAME id to primary_id

ALTER Table person3 alter COLUMN user_name type CHARACTER

ALTER Table person3 alter COLUMN email_address set not null 