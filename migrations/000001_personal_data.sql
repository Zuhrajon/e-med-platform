
CREATE TABLE roles (
    role_id int PRIMARY KEY,
    role_name text
);

INSERT INTO roles (role_id, role_name)
VALUES (1, 'patient'),
       (2, 'doctor'),
       (3, 'hr'),
       (4, 'admin');

CREATE TABLE users (
    user_id BIGINT PRIMARY KEY,
    role_id    SMALLINT NOT NULL REFERENCES roles(role_id),
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    active BOOLEAN DEFAULT TRUE,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
)

CREATE TABLE gender (
    gender_id int PRIMARY KEY,
    gender_name text

);

CREATE TABLE personal_data (
    personal_data_id PRIMARY KEY
    user_id BIGINT  REFERENCES users(user_id),
    first_name TEXT NOT NULL,
    last_name  TEXT NOT NULL,
    phone_number TEXT UNIQUE,
    gender_id SMALLINT NOT NULL REFERENCES gender(gender_id),
    document_id TEXT NOT NULL ,
    address TEXT,
    date_of_birth DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    active BOOLEAN DEFAULT TRUE,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);




