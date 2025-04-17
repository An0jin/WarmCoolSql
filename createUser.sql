CREATE Table "user"(user_id VARCHAR(255) PRIMARY KEY,
pw TEXT NOT NULL ,
name TEXT NOT NULL, 
birthday date, 
gender Text Check(gender IN ('남자','여자')) NOT NULL,
color_name varchar(255),
Foreign Key (color_name) REFERENCES color(color_id))