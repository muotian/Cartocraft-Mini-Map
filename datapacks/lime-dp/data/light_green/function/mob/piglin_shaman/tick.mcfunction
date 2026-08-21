scoreboard players add @s light_green.main.math 1
execute on target run tag @s add light_green.target
execute if entity @n[tag=light_green.target,distance=..20] at @s rotated ~ 0 positioned ^ ^1 ^0.5 run particle portal ~ ~ ~ 0.05 0.05 0.05 1 1
execute on target run tag @s remove light_green.target
execute as @e[tag=light_green.piglin_guard,tag=light_green.change,type=piglin,distance=..20,limit=1] run tag @s add light_green.support_target
execute as @e[tag=light_green.piglin_guard,type=piglin,distance=..20,limit=1] run tag @s add light_green.shaman_target
function light_green:mob/piglin_shaman/bullet/convert

execute store result score @s light_green.mob.health run data get entity @s Health
execute store result score $hurt light_green.main.math run data get entity @s HurtTime
execute if score $hurt light_green.main.math matches 10 if score @s light_green.mob.health = @s light_green.mob.health_late at @s run playsound block.anvil.land hostile @a ~ ~ ~ 1 1
scoreboard players operation @s light_green.mob.health_late = @s light_green.mob.health

execute if entity @n[tag=light_green.shaman_target,type=piglin] run effect give @s absorption 1 1 true
execute if entity @n[tag=light_green.shaman_target,type=piglin] run effect give @s regeneration 1 0 true
execute if entity @n[tag=light_green.shaman_target,type=piglin] run effect give @s speed 1 1 true

execute as @e[tag=light_green.piglin_guard,tag=light_green.change,type=piglin,distance=..20,limit=1] run tag @s remove light_green.support_target
execute as @e[tag=light_green.piglin_guard,type=piglin,distance=..20,limit=1] run tag @s remove light_green.shaman_target
execute if score @s light_green.main.math matches 40.. run scoreboard players reset @s light_green.main.math