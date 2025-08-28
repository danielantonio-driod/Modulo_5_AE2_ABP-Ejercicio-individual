-- AE2_ABP - Empleados (SQL Server)
-- Archivo único con setup + 5 consultas

-- (Opcional) selecciona la base de datos donde ejecutar
-- USE TuBaseDeDatos;
-- GO

-- 1) Limpieza: elimina la tabla si existe para reejecutar sin errores
IF OBJECT_ID('empleados', 'U') IS NOT NULL
  DROP TABLE empleados;
GO

-- 2) Crear tabla con los atributos solicitados
CREATE TABLE empleados (
  id INT PRIMARY KEY,                 -- Clave primaria (única)
  nombre NVARCHAR(100) NOT NULL,      -- Nombre del empleado
  departamento NVARCHAR(100) NOT NULL,-- Departamento al que pertenece
  salario DECIMAL(10,2) NOT NULL      -- Salario con 2 decimales
);
GO

-- 3) Insertar los 15 registros del enunciado
INSERT INTO empleados (id, nombre, departamento, salario) VALUES
(1, 'Ana García', 'Recursos Humanos', 32000),
(2, 'Luis Pérez', 'Marketing', 35000),
(3, 'Carlos Díaz', 'Ventas', 27000),
(4, 'María López', 'Contabilidad', 40000),
(5, 'Pedro Martínez', 'Desarrollo', 45000),
(6, 'Julia Fernández', 'Recursos Humanos', 31000),
(7, 'Juan Rodríguez', 'Marketing', 38000),
(8, 'Elena Sánchez', 'Ventas', 26000),
(9, 'David González', 'Contabilidad', 42000),
(10, 'Raquel Pérez', 'Desarrollo', 46000),
(11, 'Fernando García', 'Recursos Humanos', 33000),
(12, 'Isabel Ruiz', 'Marketing', 36000),
(13, 'Sergio Gómez', 'Ventas', 28000),
(14, 'Carmen Romero', 'Contabilidad', 39000),
(15, 'José Torres', 'Desarrollo', 48000);
GO

/* ===== 5 CONSULTAS DEL EJERCICIO ===== */

-- 4.1) Actualiza el salario del empleado con ID = 3 a 30000
UPDATE empleados
SET salario = 30000
WHERE id = 3;
GO

-- 4.2) Empleados del departamento 'Ventas'
SELECT *
FROM empleados
WHERE departamento = N'Ventas';
GO

-- 4.3) Salario promedio por departamento
SELECT
  departamento,
  AVG(salario) AS salario_promedio
FROM empleados
GROUP BY departamento
ORDER BY departamento;
GO

-- 4.4) Nombres de departamentos (sin repetir)
SELECT DISTINCT departamento
FROM empleados
ORDER BY departamento;
GO

-- 4.5) Dos empleados con salarios más bajos (orden ascendente)
SELECT TOP (2) id, nombre, departamento, salario
FROM empleados
ORDER BY salario ASC, id ASC;
GO
