-- lists all bands with Glam rock as their main style, ranked by their longevity
SELECT band_name, (IFNULLL(split, 2022) - formed) AS lifespan
-- IFNULL: USE 2022 if split culumn is null
-- to get the longevity: split minus formed
FROM metal_bands
-- from metal_bands table
WHERE style LIKE '%Glam rock%'
-- select only glam rock from style culume
ORDER BY lifespan DESC;
