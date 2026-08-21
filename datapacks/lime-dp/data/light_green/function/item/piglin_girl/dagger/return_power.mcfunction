data modify storage light_green:weapon strength_level set value 0
data modify storage light_green:weapon weakness_level set value 0
data modify storage light_green:weapon strength_icon set value "true"
data modify storage light_green:weapon weakness_icon set value "true"
data modify storage light_green:weapon strength_time set value 1
data modify storage light_green:weapon weakness_time set value 1


execute store result score $strength_level light_green.main.math run data get entity @s active_effects[{id:"minecraft:strength"}].amplifier
execute store result score $strength_time light_green.main.math run data get entity @s active_effects[{id:"minecraft:strength"}].duration 0.05
execute store result score $strength_icon light_green.main.math run data get entity @s active_effects[{id:"minecraft:strength"}].show_icon

execute store result score $weakness_level light_green.main.math run data get entity @s active_effects[{id:"minecraft:weakness"}].amplifier
execute store result score $weakness_time light_green.main.math run data get entity @s active_effects[{id:"minecraft:weakness"}].duration 0.05
execute store result score $weakness_icon light_green.main.math run data get entity @s active_effects[{id:"minecraft:weakness"}].show_icon

execute if score $strength_time light_green.main.math matches -1 run data modify storage light_green:weapon strength_time set value "infinite"
execute if score $weakness_time light_green.main.math matches -1 run data modify storage light_green:weapon weakness_time set value "infinite"
execute if score $strength_time light_green.main.math matches 1.. store result storage light_green:weapon strength_time int 1 run scoreboard players get $strength_time light_green.main.math
execute if score $weakness_time light_green.main.math matches 1.. store result storage light_green:weapon strength_time int 1 run scoreboard players get $weakness_time light_green.main.math

execute store result storage light_green:weapon strength_level int 1 run scoreboard players get $strength_level light_green.main.math
execute store result storage light_green:weapon weakness_level int 1 run scoreboard players get $weakness_level light_green.main.math

execute if score $strength_icon light_green.main.math matches 0 run data modify storage light_green:weapon strength_icon set value "true"
execute if score $strength_icon light_green.main.math matches 1 run data modify storage light_green:weapon strength_icon set value "false"

execute if score $weakness_icon light_green.main.math matches 0 run data modify storage light_green:weapon weakness_icon set value "true"
execute if score $weakness_icon light_green.main.math matches 1 run data modify storage light_green:weapon weakness_icon set value "false"

function light_green:item/piglin_girl/dagger/return_power2 with storage light_green:weapon