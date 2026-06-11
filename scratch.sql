-- Scratch pad for SQL queries
-- In VS Code (mssql extension):


--   • Run whole file:        Cmd+Shift+E

--   • Run selected text:     highlight it, then Cmd+Shift+E
--   • If not connected yet:   Cmd+Shift+P -> "MS SQL: Connect"

-- 1. What version are we on?
SELECT @@VERSION;

-- 2. List all databases

SELECT name, database_id, create_date
FROM sys.databases
ORDER BY database_id;

-- 3. Create your own database to play in
-- CREATE DATABASE playground;
-- GO

-- 4. Example: a simple table (uncomment after creating/using a database)
-- USE playground;
-- GO
-- CREATE TABLE users (
--     id        INT IDENTITY(1,1) PRIMARY KEY,
--     name      NVARCHAR(100) NOT NULL,
--     email     NVARCHAR(255) UNIQUE,
--     created   DATETIME2 DEFAULT SYSUTCDATETIME()
-- );
-- GO
-- INSERT INTO users (name, email) VALUES ('Aaron', 'ngairaharon@gmail.com');
-- SELECT * FROM users;
