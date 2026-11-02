advancement revoke @s only tools:candle_placer.placed
execute as @e[type=minecraft:marker,distance=0..100] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{predicates:{"minecraft:custom_data":{id:"tools:candle_placer"}}}} at @s run function tools:candle_placer/placer
