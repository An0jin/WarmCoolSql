CREATE Table chat
(chat_id SERIAL PRIMARY key ,
user_id VARCHAR(255) NOT NULL,
color_id VARCHAR(255) NOT NULL,
msg TEXT NOT NULL,
time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
Foreign Key (user_id) REFERENCES "user"(user_id),
Foreign Key (color_id) REFERENCES color(color_id))