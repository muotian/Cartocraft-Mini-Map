scoreboard players operation @s light_green.mob.health_late -= @s light_green.mob.health
execute if score $piglin_girl_level light_green.main.math matches 1 run scoreboard players operation @s light_green.custom.health -= @s light_green.mob.health_late
execute if score $piglin_girl_level light_green.main.math matches 1 run scoreboard players set $piglin_girl.hurt light_green.main.math 10
execute if score $piglin_girl_level light_green.main.math matches 2 if score @s light_green.mob.health_late matches 5.. run scoreboard players remove @s light_green.custom.health 1
execute if score $piglin_girl_level light_green.main.math matches 2 if score @s light_green.mob.health_late matches 5.. run scoreboard players set $piglin_girl.hurt light_green.main.math 10
effect give @s instant_health 1 200 true
execute store result score @s light_green.mob.health run data get entity @s Health
execute store result score @s light_green.mob.health_late run scoreboard players get @s light_green.mob.health