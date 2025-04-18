CREATE Table lipstick(
    hex_code VARCHAR(7) PRIMARY KEY,
    color_id VARCHAR(255),
    Foreign Key (color_id) REFERENCES color(color_id)
)