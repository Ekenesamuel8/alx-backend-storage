-- sum fans as nb_fans(decending format) selected from origin in metal_bans table
SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC
