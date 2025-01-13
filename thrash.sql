-- mobs with Thrash mobs cased by proc chance, PPM, level & zone
SELECT DISTINCT
    sp.name, 
    sp.id, 
    sp.auras, 
    cre.level,
    map.MapName_Lang_enUS as zone,
    CASE 
        WHEN sp.auras = 3417 THEN 10
        WHEN sp.auras = 8876 THEN 15
        WHEN sp.auras = 12787 THEN 35
        WHEN sp.auras = 3391 THEN "?"
        ELSE NULL
    END AS proc_chance,
    CASE 
        WHEN sp.auras = 3417 THEN ROUND(((10 / 100) * 60) / 4, 2)
        WHEN sp.auras = 8876 THEN ROUND(((15 / 100) * 60) / 4, 2)
        WHEN sp.auras = 12787 THEN ROUND(((35 / 100) * 60) / 4, 2)
        WHEN sp.auras = 3391 THEN "?"
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
        a.spell_id IN (3391,3417,8876,12787,369079,21919)
    
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
        a.auras IN (3391,3417,8876,12787,369079,21919)
) sp, creature cre, db_Map_12340 map
WHERE sp.id = cre.id
AND cre.map = map.id
ORDER BY proc_chance, sp.name DESC
