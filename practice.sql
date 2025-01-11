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

----- day two -----
-- add a unique/pk constraint value
-- remove a constraint value from column
-- delete a table
-- delete entire table data
-- order by ,DISTINCT, where ,group by

alter table test_table
add constraint UNIQUE_test_table_name UNIQUE (name)