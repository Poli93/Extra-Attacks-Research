-- Mobs with Double Attack
SELECT abc.*
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
) abc;

-- Mobs with Double Attack, cased by proc chance
SELECT
    abc.name, 
    abc.id, 
    abc.auras,
    CASE 
        WHEN abc.auras = 18943 THEN 50
        WHEN abc.auras = 19194 THEN 100
        WHEN abc.auras = 19817 THEN 10
        WHEN abc.auras = 19818 THEN 25
        WHEN abc.auras = 18941 THEN "?"
        ELSE NULL
    END AS proc_chance
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
) abc;
