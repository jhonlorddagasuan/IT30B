SELECT * FROM books;

SELECT * FROM books
ORDER BY book_title ASC;

SELECT * FROM books
ORDER BY book_title DESC;

select * from books
order by book_title ASC;

select * from books
order by student_last_name DESC;

select * from books
order by student_last_name ASC;

select * from books
order by student_last_name ASC;

SELECT student_first_name, 
        student_last_name 
        FROM books
ORDER BY student_last_name ASC;

SELECT student_first_name, 
        student_last_name 
        FROM books
order by student_first_name ASC
limit 1;

UPDATE books
SET book_title = 'avatar', 
    book_author = 'janix'
WHERE book_id = 1;