CREATE Table "user"(user_id TEXT PRIMARY KEY,
pw TEXT NOT NULL ,
name TEXT NOT NULL, 
year int not NULL, 
gender Text Check(gender IN ('Male','Female')) NOT NULL,
hex_code TEXT,
Foreign Key (hex_code) REFERENCES lipstick(hex_code));