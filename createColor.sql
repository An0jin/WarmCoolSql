-- 퍼스널 컬러 테이블 제작
CREATE table color(
    color_id  VARCHAR(255) PRIMARY KEY,-- 퍼스널 컬러
    description TEXT,-- 설명
    img TEXT NOT NULL -- 이미지 주소
)

INSERT INTO color(color_id,img) VALUES
('봄 웜톤','spring.png'),
('여름 쿨톤','summer.png'),
('가을 웜톤','fall.png'),
('겨울 쿨톤','winter.png');