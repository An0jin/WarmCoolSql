-- 퍼스널 컬러 테이블 제작
CREATE table color(
    color_id  VARCHAR(255) PRIMARY KEY,-- 퍼스널 컬러
    description TEXT-- 설명
);

INSERT INTO color(color_id, description) VALUES
('웜톤', '오렌지, 코랄, 피치 계열의 밝고 따뜻한 색상이 어울림'),
('쿨톤', '핑크, 플럼, 베리 계열의 차분하고 시원한 색상이 어울림')