-- 퍼스널 컬러 테이블 제작
CREATE table color(
    color_id  TEXT PRIMARY KEY,-- 퍼스널 컬러
    description TEXT-- 설명
);

INSERT INTO color (color_id, description) VALUES
('fallWarm', 'Fall Warm features deep, rich, and earthy tones with golden undertones. Best colors include rust, camel, terracotta, olive, and golden brown. Avoid cool pastels and icy blues.'),
('springWarm', 'Spring Warm is bright, fresh, and light with golden or peachy undertones. Best colors include coral, peach, ivory, and warm turquoise. Avoid dark, muted tones.'),
('summerCool', 'Summer Cool is soft, muted, and cool-toned with a blue undertone. Best colors include lavender, soft pink, powder blue, and rose gray. Avoid warm yellows and oranges.'),
('winterCool', 'Winter Cool is bold, high-contrast, and icy, with strong blue undertones. Best colors include black, pure white, sapphire, emerald, and fuchsia. Avoid earth tones and beige.');
