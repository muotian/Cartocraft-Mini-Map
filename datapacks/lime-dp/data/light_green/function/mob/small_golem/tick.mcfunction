execute store result score @s light_green.mob.health run data get entity @s Health
execute if score @s light_green.mob.health < @s light_green.mob.health_late run scoreboard players set @s light_green.hurt 10
scoreboard players operation @s light_green.mob.health_late = @s light_green.mob.health


execute if score @s light_green.hurt matches 9 run function light_green:mob/small_golem/hurt

execute if score @s light_green.hurt matches 0 run function light_green:mob/small_golem/hurt_deafault

execute if score @s light_green.hurt matches 1.. run scoreboard players remove @s light_green.hurt 1

particle portal ~ ~1 ~ 0.25 0.5 0.25 0 1

execute store result storage light_green:mob id int 1 run scoreboard players get @s light_green.golem_id
function light_green:mob/small_golem/tick2 with storage light_green:mob

execute on target run tag @s add light_green.target
damage @s 0 light_green:golem_angry by @n[tag=light_green.target,distance=..5]
execute on target run tag @s remove light_green.target