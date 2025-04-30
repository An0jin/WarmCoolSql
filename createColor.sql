-- 퍼스널 컬러 테이블 제작
CREATE table color(
    color_id  VARCHAR(255) PRIMARY KEY,-- 퍼스널 컬러
    description TEXT-- 설명
);

INSERT INTO color(color_id, description) VALUES
('봄 웜톤', '따뜻하고 생기 있는 밝은 컬러가 어울림'),
('여름 쿨톤', '부드럽고 은은한 파스텔톤이 어울림'),
('가을 웜톤', '깊고 풍부한 자연 컬러가 어울림'),
('겨울 쿨톤', '선명하고 강한 대비의 쿨 컬러가 어울림');
