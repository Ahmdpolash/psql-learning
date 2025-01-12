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
    userId INTEGER REFERENCES "user" (id)
)

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

INSERT INTO post (title, userId) VALUES ('test', NULL)