DROP TABLE IF EXISTS krediler CASCADE;

CREATE TABLE krediler (
    uye_id INT PRIMARY KEY,
    kredi INT NOT NULL CHECK (kredi >= 0)
);

INSERT INTO krediler (uye_id, kredi) VALUES
(1, 1000),
(2, 500),
(3, 200),
(5, 400),
(7, 150),
(9, 300),
(11, 250);
