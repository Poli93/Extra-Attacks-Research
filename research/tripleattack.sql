-- mobs with Triple Attack cased by proc chance, PPM, level & zone
SELECT DISTINCT
    sp.name, 
    sp.id, 
    sp.auras, 
    cre.level,
    map.MapName_enUS as zone,
    CASE 
        WHEN sp.auras = 25175 THEN "?"
        ELSE NULL
    END AS proc_chance,
    CASE 
        WHEN sp.auras = 25175 THEN "?"
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
        a.spell_id IN (25175)
    
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
        a.auras IN (25175)
) sp, creature cre, db_Map_5875 map
WHERE sp.id = cre.id
AND cre.map = map.id
ORDER BY proc_chance ASC, sp.name ASC, cre.level DESC
