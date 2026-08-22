execute as @a at @s if items entity @s weapon.offhand *[custom_data~{frozen_effect: 1b}] run particle minecraft:snowflake ~ ~1.2 ~ 0.2 0.25 0.2 0.0001 1

scoreboard players set @a wool_purple.self_ignitor 0
execute as @a[tag=wool_purple.self_ignitor] if score @s wool_purple.self_ignitor matches 0 run scoreboard players reset @s wool_purple.ability.stockpile
execute as @a[tag=wool_purple.self_ignitor] if score @s wool_purple.self_ignitor matches 0 run tag @s remove wool_purple.self_ignitor
execute as @e[tag=wool_purple.fire_arrow] run scoreboard players add @s wool_purple.self_ignitor 1
execute as @e[tag=wool_purple.dummy] run scoreboard players add @s wool_purple.self_ignitor 1