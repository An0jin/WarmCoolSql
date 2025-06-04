-- 퍼스널 컬러 테이블 제작
CREATE table color(
    color_id  VARCHAR(255) PRIMARY KEY,-- 퍼스널 컬러
    description TEXT-- 설명
);

INSERT INTO color(color_id, description) VALUES
('Warm', 'Bright and warm colors such as orange, coral, and peach look good'),
('Cool', 'Cool and calm colors such as pink, plum, and berry look good')    