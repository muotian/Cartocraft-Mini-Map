scoreboard players operation @s light_green.mob.health_late -= @s light_green.mob.health
scoreboard players operation @s light_green.custom.health -= @s light_green.mob.health_late
effect give @s instant_damage 1 100
scoreboard players set @s light_green.mob.health 1024
execute store result score @s light_green.mob.health_late run scoreboard players get @s light_green.mob.health
execute unless score @s light_green.custom.health matches 0.. run function light_green:mob/boss/graud_golem/leg/broken with storage light_green:boss