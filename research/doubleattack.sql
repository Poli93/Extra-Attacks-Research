-- mobs with Double Attack mobs cased by proc chance, PPM, level & zone
SELECT DISTINCT
    sp.name, 
    sp.id, 
    sp.auras, 
    cre.level,
    map.MapName_enUS AS zone,
    CASE 
        WHEN sp.auras = 18943 THEN 50
        WHEN sp.auras = 19194 THEN 100
        WHEN sp.auras = 19817 THEN 10
        WHEN sp.auras = 19818 THEN 25
        WHEN sp.auras = 18941 THEN "?"
        ELSE NULL
    END AS proc_chance,
    CASE 
        WHEN sp.auras = 18943 THEN ROUND(((50 / 100) * 60) / 3, 2)
        WHEN sp.auras = 19194 THEN ROUND(((100 / 100) * 60) / 3, 2)
        WHEN sp.auras = 19817 THEN ROUND(((10 / 100) * 60) / 3, 2)
        WHEN sp.auras = 19818 THEN ROUND(((25 / 100) * 60) / 3, 2)
        WHEN sp.auras = 18941 THEN "?"
        ELSE NULL
    END AS ppm
FROM (
    SELECT DISTINCT 
        b.name, 
        a.caster_id AS id, 
        a.spell_id AS auras
    FROM 
        spell_unique_caster a
        JOIN creature_template_wdb b 
        ON a.caster_id = b.entry
    WHERE 
        a.spell_id IN (19818, 19817, 19194, 18943, 18941)
    
    UNION
    
    SELECT DISTINCT 
        b.name, 
        a.id AS id, 
        a.auras AS auras
    FROM 
        creature a
        JOIN creature_template_wdb b 
        ON a.id = b.entry
    WHERE 
        a.auras IN (19818, 19817, 19194, 18943, 18941)
) sp, creature cre, db_Map_5875 map
WHERE sp.id = cre.id
AND cre.map = map.id
ORDER BY proc_chance ASC, sp.name ASC, cre.level DESC
