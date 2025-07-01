-- database.sql
CREATE DATABASE IF NOT EXISTS portfolio_db;
USE portfolio_db;

-- Projects table
CREATE TABLE IF NOT EXISTS projects (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  description TEXT NOT NULL,
  image_url VARCHAR(255),
  project_url VARCHAR(255),
  tags VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- About information table
CREATE TABLE IF NOT EXISTS about (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  title VARCHAR(100) NOT NULL,
  bio TEXT NOT NULL,
  image_url VARCHAR(255),
  email VARCHAR(100),
  phone VARCHAR(20),
  location VARCHAR(100),
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO projects (title, description, image_url, project_url, tags) VALUES
('Portfolio Website', 'A personal portfolio website built with React and Express', 'https://example.com/portfolio.jpg', 'https://github.com/username/portfolio', 'React,Node.js,Express'),
('E-commerce App', 'Full-stack e-commerce application', 'https://example.com/ecommerce.jpg', 'https://github.com/username/ecommerce', 'React,Node.js,MongoDB');

INSERT INTO about (name, title, bio, image_url, email, phone, location) VALUES
('John Doe', 'Full Stack Developer', 'I am a passionate developer with experience in building web applications using modern technologies.', 'https://example.com/profile.jpg', 'john@example.com', '+1234567890', 'San Francisco, CA');