SELECT * FROM HorasExtras_IBK

-- 1. Total de horas extras y costo total por �rea:
SELECT 
	�rea,
	SUM(Horas_Extras) AS Total_HHEE,
	ROUND(SUM(Horas_Extras * Tarifa_Hora), 2) AS Costo_Total
FROM HorasExtras_IBK
GROUP BY �rea
ORDER BY Costo_Total DESC;
--Nota: El �rea de MRK consume m�s HHEE por lo tanto genera mayor costo. 

--2. Promedio de horas extras por empleado:
SELECT 
	ID_Empleado,
	AVG(Horas_Extras) AS Promedio_HHEE
FROM HorasExtras_IBK
GROUP BY ID_Empleado;

--3. Horas extras por mes y �rea:
SELECT
	FORMAT(Fecha, 'yyyy-MM') AS Mes,
	�rea,
	SUM(Horas_Extras) AS Horas_Mensuales
FROM HorasExtras_IBK
GROUP BY FORMAT(Fecha, 'yyyy-MM'), �rea
ORDER BY Mes, �rea DESC;
