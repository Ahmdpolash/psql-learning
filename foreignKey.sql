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
    userId INTEGER REFERENCES "user"(id)
)

INSERT INTO "user" VALUES ()