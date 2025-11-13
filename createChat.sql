CREATE Table chat
(chat_id SERIAL PRIMARY key ,
email TEXT NOT NULL,
msg TEXT NOT NULL,
time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
Foreign Key (email) REFERENCES "user"(email));