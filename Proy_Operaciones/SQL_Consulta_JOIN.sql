SELECT * FROM Empleados_Operaciones
SELECT * FROM Tiempos_Produccion

SELECT * FROM Empleados_Operaciones E
INNER JOIN Tiempos_Produccion T ON E.ID_Empleado=T.ID_Empleado

SELECT E.Nombre, AVG(T.Producci�n_Total) AS Produccion_empleado 
FROM Empleados_Operaciones E
INNER JOIN Tiempos_Produccion T ON E.ID_Empleado=T.ID_Empleado
GROUP BY E.Nombre;

SELECT E.�rea, AVG(T.Producci�n_Total) AS Produccion_empleado 
FROM Empleados_Operaciones E
INNER JOIN Tiempos_Produccion T ON E.ID_Empleado=T.ID_Empleado
GROUP BY E.�rea
ORDER BY Produccion_empleado DESC;
--El mayor promedio de produccion se encuentra en las �reas de Producci�n, Logistica y Mantenimiento.

SELECT E.Turno, AVG(T.Producci�n_Total) AS Produccion_empleado 
FROM Empleados_Operaciones E
INNER JOIN Tiempos_Produccion T ON E.ID_Empleado=T.ID_Empleado
GROUP BY E.Turno
ORDER BY Produccion_empleado DESC;
-- La mayor produccion se registra en el turno de la noche

SELECT TOP 5 T.Fecha, AVG(T.Producci�n_Total) AS Produccion_empleado 
FROM Tiempos_Produccion T
INNER JOIN Empleados_Operaciones E ON T.ID_Empleado=E.ID_Empleado
GROUP BY T.Fecha
ORDER BY Produccion_empleado DESC;
--La mayor produccion se dieron en mayo y junio

SELECT TOP 2 E.ID_Empleado, E.Nombre, AVG(T.Producci�n_Total) AS Produccion
FROM Empleados_Operaciones E
INNER JOIN Tiempos_Produccion T ON E.ID_Empleado = T.ID_Empleado
GROUP BY E.ID_Empleado, E.Nombre
ORDER BY Produccion ASC;
-- Los colaboradores E154 Y E151 Tienen el menor promedio de produccion realizado. 