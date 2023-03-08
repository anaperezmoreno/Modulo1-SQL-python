/* . REALIZAR LAS SIGUIENTES CONSULTAS:
/* 1- Selecciona las victorias máximas y mínimas para cada equipo diferente en la tabla de "STATS".*/

SELECT team_id,  MAX(w) AS `victorias_max`, MIN(w) AS `victorias_min`
FROM stats
GROUP BY team_id;

/* 2- Obtén los primeros 10 resultados de la tabla de teams*/

SELECT  *
FROM teams
LIMIT 10;

/* 3- Selecciona todos los datos de los equipos que tengan entre 20 y 30 victorias de la tabla stats.*/

SELECT *
FROM stats
WHERE w BETWEEN 20 AND 30;

/* 4- Realiza un cuenteo de número total de equipos que existende la tabla teams.*/

SELECT  COUNT(team)
FROM teams;

-- En total hay 30 equipos en la tabla teams.

/* 5- Calcula la media de todos los puntos conseguidos de la tabla stats*/

SELECT AVG (pts)
FROM stats;

-- La media obtenida es 109.38000010172526.

/* 6- Selecciona el máximo de victorias, máximo de puntos y la diferencia entre el máximo de puntos 
	con la media de puntos como diferencia_media de la tabla stats.*/
    
    SELECT MAX(w), MAX(pts), MAX(pts) - AVG(pts) AS diferencia_media
    FROM stats
    
    -- El máximo de victorias es 67, el máximo de puntos es 120.01 y la diferencia_media es 10.72.