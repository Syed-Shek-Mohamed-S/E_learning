use e_learning;
 -- Create Users table
CREATE TABLE IF NOT EXISTS users (
    user_id INT PRIMARY KEY,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);



-- Create Departments table
CREATE TABLE IF NOT EXISTS departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL
);



-- Create Majors table
CREATE TABLE IF NOT EXISTS majors (
    major_id INT PRIMARY KEY,
    dept_id INT NOT NULL, 
    major_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);


-- Create Students table
CREATE TABLE IF NOT EXISTS students (
    user_id INT PRIMARY KEY,
    major_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (major_id) REFERENCES majors(major_id)
);



-- Create Professors table
CREATE TABLE IF NOT EXISTS professors (
    user_id INT PRIMARY KEY,
    dept_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);



-- Create Admins table
CREATE TABLE IF NOT EXISTS admins (
    user_id INT PRIMARY KEY,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);



--  Create Courses table
CREATE TABLE IF NOT EXISTS courses (
    course_id INT PRIMARY KEY,
    course_code VARCHAR(255) NOT NULL,
    course_name VARCHAR(255) NOT NULL,
    professor_id INT NOT NULL,
    dept_id INT NOT NULL,
    credit_hours INT NOT NULL,
    course_description TEXT,
    FOREIGN KEY (professor_id) REFERENCES professors(user_id),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);



-- Create Assignments table
CREATE TABLE IF NOT EXISTS assignments (
    assignment_id INT PRIMARY KEY,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
    assignment_title VARCHAR(255),
    assignment_description TEXT,
    due_date DATETIME
);



-- Create Enrollments table
CREATE TABLE IF NOT EXISTS enrollments (
    enroll_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    status ENUM('enrolled', 'dropped'),
    FOREIGN KEY (student_id) REFERENCES students(user_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);



-- Create Grades table
CREATE TABLE IF NOT EXISTS grades (
    grade_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    assignment_id INT NOT NULL,
    grade FLOAT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(user_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
    FOREIGN KEY (assignment_id) REFERENCES assignments(assignment_id)
);

-- Values insertion in User Table -- 
INSERT INTO users (user_id, firstname, lastname, username, password, email) VALUES
(1, 'John', 'Doe', 'johndoe', 'password123', 'johndoe@example.com'),
(2, 'Jane', 'Smith', 'janesmith', 'password123', 'janesmith@example.com'),
(3, 'Michael', 'Johnson', 'michaelj', 'password123', 'michaelj@example.com'),
(4, 'Emily', 'Davis', 'emilyd', 'password123', 'emilyd@example.com'),
(5, 'William', 'Brown', 'williamb', 'password123', 'williamb@example.com'),
(6, 'Olivia', 'Williams', 'oliviaw', 'password123', 'oliviaw@example.com'),
(7, 'James', 'Jones', 'jamesj', 'password123', 'jamesj@example.com'),
(8, 'Isabella', 'Garcia', 'isabellag', 'password123', 'isabellag@example.com'),
(9, 'Benjamin', 'Martinez', 'benjaminm', 'password123', 'benjaminm@example.com'),
(10, 'Sophia', 'Hernandez', 'sophiah', 'password123', 'sophiah@example.com'),
(11, 'Lucas', 'Lopez', 'lucasl', 'password123', 'lucasl@example.com'),
(12, 'Charlotte', 'Gonzalez', 'charlotteg', 'password123', 'charlotteg@example.com'),
(13, 'Henry', 'Wilson', 'henryw', 'password123', 'henryw@example.com'),
(14, 'Amelia', 'Anderson', 'ameliaa', 'password123', 'ameliaa@example.com'),
(15, 'Alexander', 'Thomas', 'alexandert', 'password123', 'alexandert@example.com'),
(16, 'Grace', 'Taylor', 'gracet', 'password123', 'gracet@example.com'),
(17, 'Ethan', 'Moore', 'ethanm', 'password123', 'ethanm@example.com'),
(18, 'Ava', 'Jackson', 'avaj', 'password123', 'avaj@example.com'),
(19, 'Mason', 'White', 'masonw', 'password123', 'masonw@example.com'),
(20, 'Lily', 'Harris', 'lilyh', 'password123', 'lilyh@example.com'),
(21, 'Jack', 'Martin', 'jackm', 'password123', 'jackm@example.com'),
(22, 'Mia', 'Clark', 'miac', 'password123', 'miac@example.com'),
(23, 'Daniel', 'Rodriguez', 'danielr', 'password123', 'danielr@example.com'),
(24, 'Madison', 'Lewis', 'madisonl', 'password123', 'madisonl@example.com'),
(25, 'Matthew', 'Lee', 'matthewl', 'password123', 'matthewl@example.com'),
(26, 'Liam', 'Walker', 'liamw', 'password123', 'liamw@example.com'),
(27, 'Chloe', 'Hall', 'chloeh', 'password123', 'chloeh@example.com'),
(28, 'Sebastian', 'Allen', 'sebastian', 'password123', 'sebastian@example.com'),
(29, 'Harper', 'Young', 'harpery', 'password123', 'harpery@example.com'),
(30, 'Jacob', 'King', 'jacobk', 'password123', 'jacobk@example.com'),
(31, 'Zoe', 'Wright', 'zoew', 'password123', 'zoew@example.com'),
(32, 'Ryan', 'Scott', 'ryans', 'password123', 'ryans@example.com'),
(33, 'Victoria', 'Adams', 'victoriaa', 'password123', 'victoriaa@example.com'),
(34, 'Isaac', 'Baker', 'isaacb', 'password123', 'isaacb@example.com'),
(35, 'Nora', 'Nelson', 'noran', 'password123', 'noran@example.com'),
(36, 'Wyatt', 'Carter', 'wyattc', 'password123', 'wyattc@example.com'),
(37, 'Ellie', 'Mitchell', 'elliem', 'password123', 'elliem@example.com'),
(38, 'Elijah', 'Perez', 'elijahp', 'password123', 'elijahp@example.com'),
(39, 'Scarlett', 'Roberts', 'scarlettr', 'password123', 'scarlettr@example.com'),
(40, 'Owen', 'Turner', 'owent', 'password123', 'owent@example.com'),
(41, 'Samantha', 'Phillips', 'samanthap', 'password123', 'samanthap@example.com'),
(42, 'Maverick', 'Campbell', 'maverickc', 'password123', 'maverickc@example.com'),
(43, 'Charlotte', 'Parker', 'charlottep', 'password123', 'charlottep@example.com'),
(44, 'Daniel', 'Evans', 'daniele', 'password123', 'daniele@example.com'),
(45, 'Bella', 'Edwards', 'bellae', 'password123', 'bellae@example.com'),
(46, 'Carter', 'Collins', 'carterc', 'password123', 'carterc@example.com'),
(47, 'Aiden', 'Stewart', 'aidenst', 'password123', 'aidenst@example.com'),
(48, 'Hannah', 'Morris', 'hannahm', 'password123', 'hannahm@example.com'),
(49, 'Grace', 'Rogers', 'gracer', 'password123', 'gracer@example.com'),
(50, 'Samuel', 'Reed', 'samuelr', 'password123', 'samuelr@example.com');

-- Value insertion in department table --
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'Sales'),
(4, 'Marketing'),
(5, 'IT Support'),
(6, 'Research and Development'),
(7, 'Customer Service'),
(8, 'Legal'),
(9, 'Operations'),
(10, 'Product Management'),
(11, 'Public Relations'),
(12, 'Accounting'),
(13, 'Supply Chain'),
(14, 'Quality Assurance'),
(15, 'Business Development');

-- Value insertion in major table --
INSERT INTO majors (major_id, dept_id, major_name) VALUES
(1, 1, 'Human Resource Management'),
(2, 2, 'Finance and Accounting'),
(3, 3, 'Sales and Marketing'),
(4, 4, 'Digital Marketing'),
(5, 5, 'Network Administration'),
(6, 6, 'Biomedical Engineering'),
(7, 7, 'Customer Service Management'),
(8, 8, 'Corporate Law'),
(9, 9, 'Supply Chain Management'),
(10, 10, 'Product Development');

-- Value insertion in students table --
INSERT INTO students (user_id, major_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5),
(16, 6),
(17, 7),
(18, 8),
(19, 9),
(20, 10),
(21, 1),
(22, 2),
(23, 3),
(24, 4),
(25, 5),
(26, 6),
(27, 7),
(28, 8),
(29, 9),
(30, 10),
(31, 1),
(32, 2),
(33, 3),
(34, 4),
(35, 5),
(36, 6),
(37, 7),
(38, 8),
(39, 9),
(40, 10),
(41, 1),
(42, 2),
(43, 3),
(44, 4),
(45, 5),
(46, 6),
(47, 7),
(48, 8),
(49, 9),
(50, 10);

-- Stored procedure to insert new course --
DELIMITER $$

CREATE PROCEDURE InsertCourse(
    IN p_course_code VARCHAR(255),
    IN p_course_name VARCHAR(255),
    IN p_professor_id INT,
    IN p_dept_id INT,
    IN p_credit_hours INT,
    IN p_course_description TEXT
)
BEGIN
    INSERT INTO courses (
        course_code, 
        course_name, 
        professor_id, 
        dept_id, 
        credit_hours, 
        course_description
    )
    VALUES (
        p_course_code, 
        p_course_name, 
        p_professor_id, 
        p_dept_id, 
        p_credit_hours, 
        p_course_description
    );
END $$

DELIMITER ;

-- Stored procedure to update user information --
DELIMITER $$

CREATE PROCEDURE UpdateCourse(
    IN p_course_id INT,
    IN p_course_code VARCHAR(255),
    IN p_course_name VARCHAR(255),
    IN p_professor_id INT,
    IN p_dept_id INT,
    IN p_credit_hours INT,
    IN p_course_description TEXT
)
BEGIN
    UPDATE courses
    SET 
        course_code = p_course_code,
        course_name = p_course_name,
        professor_id = p_professor_id,
        dept_id = p_dept_id,
        credit_hours = p_credit_hours,
        course_description = p_course_description
    WHERE course_id = p_course_id;
END $$

DELIMITER ;

-- Stored procedure Get Course Details by Course ID --
DELIMITER $$

CREATE PROCEDURE GetCourseDetails(
    IN p_course_id INT
)
BEGIN
    SELECT 
        course_id, 
        course_code, 
        course_name, 
        professor_id, 
        dept_id, 
        credit_hours, 
        course_description
    FROM courses
    WHERE course_id = p_course_id;
END $$

DELIMITER ;

-- Stored procedure to insert new student --
DELIMITER $$

CREATE PROCEDURE InsertStudent(
    IN p_user_id INT,
    IN p_major_id INT
)
BEGIN
    INSERT INTO students (user_id, major_id)
    VALUES (p_user_id, p_major_id);
END $$

DELIMITER ;

-- Stored procedure to Get Student Details by User ID --
DELIMITER $$

CREATE PROCEDURE GetStudentDetails(
    IN p_user_id INT
)
BEGIN
    SELECT 
        s.user_id, 
        s.major_id, 
        m.major_name, 
        u.firstname, 
        u.lastname, 
        u.username, 
        u.email
    FROM students s
    JOIN users u ON s.user_id = u.user_id
    JOIN majors m ON s.major_id = m.major_id
    WHERE s.user_id = p_user_id;
END $$

DELIMITER ;

-- Stored procedure to insert new department --
DELIMITER $$

CREATE PROCEDURE InsertDepartment(
    IN p_dept_name VARCHAR(255)
)
BEGIN
    INSERT INTO departments (dept_name)
    VALUES (p_dept_name);
END $$

DELIMITER ;

-- Stored procedure to Get Department Details by Department ID--
DELIMITER $$

CREATE PROCEDURE GetDepartmentDetails(
    IN p_dept_id INT
)
BEGIN
    SELECT 
        dept_id, 
        dept_name
    FROM departments
    WHERE dept_id = p_dept_id;
END $$

DELIMITER ;








