CREATE Table "user"(user_id VARCHAR(255) PRIMARY KEY,
pw TEXT NOT NULL ,
name TEXT NOT NULL, 
year int not NULL, 
gender Text Check(gender IN ('Male','Female')) NOT NULL,
hex_code varchar(7),
Foreign Key (hex_code) REFERENCES lipstick(hex_code));