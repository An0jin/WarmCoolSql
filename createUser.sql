CREATE Table "user"(email TEXT PRIMARY KEY,
pw TEXT NOT NULL ,
name TEXT NOT NULL, 
hex_code TEXT,
Foreign Key (hex_code) REFERENCES lipstick(hex_code));