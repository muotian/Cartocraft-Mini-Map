gamerule mob_drops false

execute as @e[tag=wool_purple.fire_arrow] if score @s wool_purple.self_ignitor matches 4.. run kill @s
execute as @e[tag=wool_purple.dummy] if score @s wool_purple.self_ignitor matches 4.. run kill @s

gamerule mob_drops true