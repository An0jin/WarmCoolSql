-- 퍼스널 컬러 테이블 제작
CREATE table color(
    color_id  VARCHAR(255) PRIMARY KEY,-- 퍼스널 컬러
    description TEXT,-- 설명
)

INSERT INTO color(color_id) VALUES
('봄 웜톤'),
('여름 쿨톤'),
('가을 웜톤'),
('겨울 쿨톤');