-- mobs with Thrash cased by proc chance & PPM
SELECT
    abc.name, 
    abc.id, 
    abc.auras, -- (3391,3417,8876,12787,369079,21919)
    CASE 
        WHEN abc.auras = 3417 THEN 10
        WHEN abc.auras = 8876 THEN 15
        WHEN abc.auras = 12787 THEN 35
        WHEN abc.auras = 3391 THEN "?"
        ELSE NULL
    END AS proc_chance,
    CASE 
        WHEN abc.auras = 3417 THEN ROUND(((10 / 100) * 60) / 4, 2)
        WHEN abc.auras = 8876 THEN ROUND(((15 / 100) * 60) / 4, 2)
        WHEN abc.auras = 12787 THEN ROUND(((35 / 100) * 60) / 4, 2)
        WHEN abc.auras = 3391 THEN "?"
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
) abc;
