---------------------- todo learning foreign key ----------------

-- user table
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    userName VARCHAR(255) NOT NULL
)

-- post table

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    -- userId INTEGER REFERENCES "user" (id) ON DELETE CASCADE
    -- userId INTEGER REFERENCES "user" (id) ON DELETE set null
    userId INTEGER REFERENCES "user" (id) on delete set DEFAULT DEFAULT 2 
)

DROP Table post

DROP Table "user"

ALTER table post ALTER COLUMN userId DROP NOT NULL

-- insert data on user table
INSERT INTO
    "user" (userName)
VALUES ('polash'),
    ('akash'),
    ('batash'),
    ('sagor'),
    ('nodi')

-- insert data on post table
INSERT INTO
    post (title, userId)
VALUES (
        'Enjoying sunny day with polash',
        1
    ),
    (
        'Enjoying sunny day with akash',
        2
    ),
    (
        'Enjoying rainy day with batash',
        3
    ),
    (
        'Enjoying cloudy day with sagor',
        4
    ),
    (
        'Enjoying stormy day with nodi',
        5
    )

SELECT * FROM "user"

SELECT * FROM post

INSERT INTO post (title, userId) VALUES ('test', 0)

-- todo Insertion constraint on INSERT post
-- Attempting to insert a post with a user ID that does not exist
-- Inserting a post with a valid user ID
-- Attempting to insert a post without specifying a user ID

DELETE FROM "user" WHERE id = 4;

-- todo  Deletion constraint on DELETE user
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT