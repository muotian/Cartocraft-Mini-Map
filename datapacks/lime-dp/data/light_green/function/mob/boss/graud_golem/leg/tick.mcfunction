execute unless score @e[tag=light_green.boss.graud_golem,limit=1] light_green.mob.ai matches 2.. run return fail
execute store result storage light_green:boss leg int 1 run scoreboard players get @s light_green.mob.ai

execute store result score $hurt light_green.main.math run data get entity @s HurtTime

execute if score $hurt light_green.main.math matches 9 run function light_green:mob/boss/graud_golem/leg/hurt with storage light_green:boss
execute if score $hurt light_green.main.math matches 1 run function light_green:mob/boss/graud_golem/leg/hurt_deafault with storage light_green:boss

execute unless score @s light_green.mob.ai matches 1.. run return fail

execute store result score @s light_green.mob.health run data get entity @s Health
execute unless score @s light_green.mob.health = @s light_green.mob.health_late run function light_green:mob/boss/graud_golem/leg/damage
execute store result score @s light_green.mob.health_late run scoreboard players get @s light_green.mob.health



execute unless score @s light_green.boss.attack_type matches 1.. run return fail

scoreboard players add @s light_green.main.math 1
execute if score @s light_green.main.math matches 20 at @s run particle dust{scale:1,color:11993343} ~ ~ ~ 0.25 1 0.25 0 100
execute if score @s light_green.main.math matches 20.. run scoreboard players set @s light_green.main.math 1