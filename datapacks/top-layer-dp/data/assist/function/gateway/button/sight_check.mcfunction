#> assist:gateway/button/sight_check

execute as @s[tag=assist.gateway.core,scores={assist.gateway.active=1..}] unless score @s assist.gateway.active matches 1 unless score @s assist.gateway.active matches 3 run return 0

tag @s add assist.gateway.this

execute as @a[distance=0..3] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",looking_at:{nbt:"{Tags:[\"assist.gateway.this\"]}"}}}} unless score @s assist.gateway.timer matches 1.. run tag @s add assist.gateway.looking_at
execute store result score $this assist.gateway.looked_at if entity @a[tag=assist.gateway.looking_at]

execute if score $this assist.gateway.looked_at matches 1 unless score @s assist.gateway.looked_at matches 1 run function assist:gateway/button/sight_check.on
execute unless score $this assist.gateway.looked_at matches 1 if score @s assist.gateway.looked_at matches 1 run function assist:gateway/button/sight_check.off
scoreboard players operation @s assist.gateway.looked_at = $this assist.gateway.looked_at

execute as @s[tag=assist.gateway.core,scores={assist.gateway.looked_at=1}] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:3}} run particle minecraft:end_rod ~ ~0.5 ~ 1 1 1 0 1 normal @a[tag=assist.gateway.looking_at]

tag @s remove assist.gateway.this
tag @a remove assist.gateway.looking_at
