-- sum fans as nb_fans(decending format) selected from origin in metal_bans table
SELECT origin, SUM(fans) AS nd_fans
FROM metal_bands
GROUP BY origin
ORDER BY nd_fans DESC
