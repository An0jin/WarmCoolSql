CREATE Table chat
(chat_id int PRIMARY key AUTO_INCREMENT,
user_id NVARCHAR(255) NOT NULL,
msg TEXT NOT NULL,
time DATETIME DEFAULT CURRENT_TIMESTAMP,
Foreign Key chat(user_id) REFERENCES user(user_id))