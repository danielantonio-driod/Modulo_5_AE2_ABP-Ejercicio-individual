# AE2_ABP – Empleados

Este repo contiene el archivo SQL con:
- Creación de tabla `empleados`
- Carga de datos del enunciado
- 5 consultas solicitadas

## Requisitos
- **SQL Server** (probado en SSMS / Azure Data Studio).  
  > Si usas MySQL o PostgreSQL, adapta el archivo a su sintaxis (ej. `LIMIT` en vez de `TOP`, quitar `NVARCHAR`, etc.).

## Cómo ejecutar
1. Abrir **SQL Server Management Studio (SSMS)** o **Azure Data Studio**.
2. Conectarse a su instancia de SQL Server.
3. Crear o seleccionar una base de datos (ej. `USE master;` o una BD de pruebas).
4. Abrir el archivo `AE2_empleados_full.sql`.
5. Ejecutar todo el script (F5).

## Qué hace
- Crea la tabla `empleados`.
- Inserta 15 registros de ejemplo.
- Ejecuta las 5 consultas requeridas:
  1. Actualiza salario de ID=3 a 30000.
  2. Lista empleados de `Ventas`.
  3. Promedio de salario por departamento.
  4. Lista de departamentos únicos.
  5. Dos sueldos más bajos (con `TOP (2)`).

## Notas
- Si el profesor usa **MySQL/MariaDB**, usar la variante con `ENGINE=InnoDB` y `LIMIT 2` (y tipos `VARCHAR`, `DECIMAL`).
- Si usa **PostgreSQL**, quitar motores/charset y mantener `LIMIT 2` (tipo `NUMERIC(10,2)`).
