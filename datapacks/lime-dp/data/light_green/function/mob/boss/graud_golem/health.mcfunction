scoreboard players operation @s light_green.mob.health_late -= @s light_green.mob.health
scoreboard players operation @s light_green.custom.health -= @s light_green.mob.health_late
data modify entity @s Health set value 1024
execute store result score @s light_green.mob.health run data get entity @s Health
execute store result score @s light_green.mob.health_late run scoreboard players get @s light_green.mob.health