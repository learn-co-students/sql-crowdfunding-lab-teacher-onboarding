CREATE TABLE projects (
    id INTEGER PRIMARY KEY,
    title TEXT,
    category TEXT,
    funding_goal NUMERIC,
    start_date TEXT,
    end_date TEXT
);

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age NUMERIC
);

CREATE TABLE pledges (
    id INTEGER PRIMARY KEY,
    amount NUMERIC,
    project_id INTEGER,
    user_id INTEGER
);