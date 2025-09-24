CREATE TABLE passwords (
    id SERIAL PRIMARY KEY,
    website VARCHAR(255) NOT NULL,
    login VARCHAR(30) NOT NULL,
    password TEXT NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_passwords_user 
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE INDEX idx_passwords_website ON passwords(website);