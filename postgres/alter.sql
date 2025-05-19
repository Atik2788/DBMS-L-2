-- Active: 1747503120726@@127.0.0.1@5432@ph

select * from users;

ALTER TABLE users
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

INSERT INTO users VALUES(03, 'atik2', 'ahmed2', 27, true)

ALTER TABLE users
    DROP COLUMN dob;

ALTER TABLE users
    RENAME COLUMN age to users_age;

ALTER TABLE users
    ALTER COLUMN first_name TYPE VARCHAR(20);

ALTER TABLE users
    ALTER COLUMN users_age set NOT NULL;

alter TABLE users
    alter COLUMN last_name drop DEFAULT;

alter TABLE users
    Add constraint uniq_users_person_id UNIQUE(person_id);

ALTER TABLE users
    add constraint uniq_users_last_name UNIQUE(last_name)

ALTER TABLE users
    add constraint pk_users_person_id PRIMARY key(person_id)

alter TABLE users
    DROP constraint uniq_users_person_id;

TRUNCATE TABLE users;