CREATE SCHEMA IF NOT EXISTS docker;

CREATE TABLE IF NOT EXISTS docker.users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS docker.events (
    id SERIAL PRIMARY KEY,
    event_name VARCHAR(100) NOT NULL,
    event_date DATE NOT NULL,
    venue_name VARCHAR(100) NOT NULL,
    event_description TEXT NOT NULL,
    time TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS docker.venues (
    id SERIAL PRIMARY KEY,
    venue_name VARCHAR(100) NOT NULL,
    venue_address VARCHAR(100) NOT NULL,
    venue_city VARCHAR(100) NOT NULL,
    venue_county VARCHAR(100) NOT NULL,
    venue_postcode VARCHAR NOT NULL,
    venue_phone VARCHAR(100) NOT NULL,
    venue_website VARCHAR(100) NOT NULL,
    capacity INT NOT NULL
);
