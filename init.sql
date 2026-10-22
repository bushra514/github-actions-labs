CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL
);

INSERT INTO employees (name, department)
VALUES
    ('Aisha', 'Cloud'),
    ('Rahul', 'DevOps'),
    ('Neha', 'Security'),
    ('Arjun', 'Development');