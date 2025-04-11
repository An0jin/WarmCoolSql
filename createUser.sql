CREATE Table user(user_id NVARCHAR(255) PRIMARY KEY,
pw TEXT NOT NULL ,
name TEXT NOT NULL, 
birthday date, 
gender ENUM('남자','여자') NOT NULL,
color_name Nvarchar(255),
Foreign Key user(color_name) REFERENCES color(color_name))