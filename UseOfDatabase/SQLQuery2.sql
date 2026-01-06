CREATE DATABASE PortfolioDB;
GO

USE PortfolioDB;
GO

CREATE TABLE Projects (
    Id INT PRIMARY KEY IDENTITY,
    Title NVARCHAR(100),
    Description NVARCHAR(500)
);
GO

INSERT INTO Projects (Title, Description) VALUES
('Student Portal', 'Role-based dashboard with bilingual UI.'),
('Compiler Explorer', 'Visual grammar ambiguity analyzer.'),
('C Projects Library', 'Menu-driven systems for beginners.');
