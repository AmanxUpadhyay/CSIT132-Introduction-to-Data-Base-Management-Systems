1.
CREATE TABLE Circle (
    Radius INT(2),
    Area DECIMAL(8,2)
);

2.
INSERT INTO Circle VALUES (3,0);
INSERT INTO Circle VALUES (4,0);
INSERT INTO Circle VALUES (5,0);

3.
ALTER TABLE Circle ADD COLUMN Perimeter INT(2);

4.
UPDATE Circle SET Area = 3.14 * Radius * Radius, Perimeter = 2 * 3.14 * Radius;

5.
SELECT * FROM Circle WHERE Perimeter < 30;
