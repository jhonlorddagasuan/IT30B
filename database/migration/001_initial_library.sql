-- #1 students table
CREATE TABLE IF NOT EXISTS students (
    --primary key for the studnts table 
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_first_name VARCHAR(50) NOT NULL,
    student_last_name VARCHAR(50) NOT NULL,

    --student course
    student_course VARCHAR(50) NOT NULL,

    --student created at timestamp
    student_created_at TIMESTAMP NOT NULL 
        DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

-- #2 books table
CREATE TABLE IF NOT EXISTS books (
    --Primary key key for the books table
    book_id INT PRIMARY KEY AUTO_INCREMENT,

    --Book details
    book_title VARCHAR(100) NOT NULL,
    book_author VARCHAR(100) NOT NULL,
    book_category VARCHAR(50) NOT NULL,

    --Book created at timestamp
    book_created_at TIMESTAMP NOT NULL 
        DEFAULT CURRENT_TIMESTAMP

)ENGINE =InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

--#3 Borrow table
CREATE TABLE IF NOT EXISTS borrow (
    --Primary key for the borrow table 
    borrow_id INT PRIMARY KEY AUTO_INCREMENT PRIMARY KEY,

    --Foreign key references
    student_id INT NOT NULL,
    book_id INT NOT NULL,

    --Borrow at timestamp not null by default
    borrow_date TIMESTAMP NOT NULL 
        DEFAULT CURRENT_TIMESTAMP,

    --Borrow return timestmap not null by default
borrow_return_date TIMESTAMP NOT NULL
    DEFAULT NULL,

    --Borrow tbale contraints and foreign keys
    CONSTRAINT fk_student_id 
    FOREIGN KEY (student_id) 
    REFERENCES students(student_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,

    CONSTRAINT fk_borrow_book
    FOREIGN KEY (book_id)
    REFERENCES books(book_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT

)ENGINE =InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

--Insert statement #1: Isert Student
INSERT INTO students (
    student_first_name,
    student_last_name,
    student_course,
)('ITACHI', 'UCHIHA', 'BSIT'),
('GON', 'FREECSS', 'BSIT'),
('KILLUA', 'ZOLDYCK', 'BSIT'),
('TANJIRO', 'TKAMADO', 'BSIT');

INSERT INTO books (
    book_title,
    book_author,
    book_category
) VALUES
   ('The Midnight Library', 'Matt Haig', 'Fantasy'),
    ('The Alchemist', 'Paulo Coelho', 'Adventure'),
    ('The Silent Patient', 'Alex Michaelides', 'Mystery'),
    ('Atomic Habits', 'James Clear', 'Self-Help'),
    ('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic');

    INSERT INTO borrow (
    student_id,
    book_id
) VALUES
    (1, 2),
    (2, 1),
    (3, 3);