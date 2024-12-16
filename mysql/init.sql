-- Create user dan beri privileges
CREATE USER IF NOT EXISTS 'datauser'@'%' IDENTIFIED BY 'datapassword';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'datauser'@'%';
FLUSH PRIVILEGES;

-- Create a sample table for demonstration
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    course VARCHAR(100),
    enrolled_date DATE
);

-- Insert some sample data
INSERT INTO students (name, email, course, enrolled_date) VALUES 
('Ahmad', 'ahmad@example.com', 'Data Science', '2024-01-15'),
('Budi', 'budi@example.com', 'Machine Learning', '2024-02-20'),
('Cindy', 'cindy@example.com', 'Data Analytics', '2024-03-10');