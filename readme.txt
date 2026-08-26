C:\DEV\IT30B\backup

CREATE DATABASE <database_name>;
SHOW DATABASES
CONNECT <database_name>;
CREATE TABLE <table_name_in_plural>();
INSERT INTO <table_name_in_plural>
     (colums) VALUES
     (values);

Utility Commands 
\! cls 
mysqldump -u root -p --databases library_db > C:\DEV4\IT30B\backup\08192026_library_db.mysql

mysqldump -u root -p --database library_db > "C:\DEV4\IT30B\backup\%date:~-4%_%date:~4,2%_%date:~7,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%_%library_db.sql"
ALTER TABLE students ADD COLUMN student_cretaed_at TIMESTAMP NULL DEFAULT NULL;
UPDATE students SET student_cretaed_at = CURRENT_TIMESTAMP WHERE student_created_at IS NULL;
ALTER TABLE students MODIFY COLUMN student_created+at TIMESTAMP NOT  NULL DEFAULT CURRENT_TIMESTAMP;