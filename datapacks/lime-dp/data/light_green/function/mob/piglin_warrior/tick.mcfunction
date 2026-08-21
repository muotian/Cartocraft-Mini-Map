execute if score @s light_green.mob.ai matches ..-1 run scoreboard players add @s light_green.mob.ai 1
execute if score @s light_green.mob.ai matches 2.. run scoreboard players remove @s light_green.mob.ai 1

execute on target run tag @s add light_green.target

execute store result score $hurt light_green.main.math run data get entity @s HurtTime
execute unless entity @e[tag=light_green.target] if score @s light_green.mob.ai matches 1.. run function light_green:mob/piglin_warrior/defence/clear
execute if entity @e[tag=light_green.target,distance=10.01..,limit=1] if score @s light_green.mob.ai matches 1 run function light_green:mob/piglin_warrior/defence/clear
execute if entity @e[tag=light_green.target,distance=4..10,limit=1] if score @s light_green.mob.ai matches 0 run function light_green:mob/piglin_warrior/defence/apply
execute if entity @e[tag=light_green.target,distance=..8,limit=1] unless entity @e[tag=light_green.piglin_warrior,scores={light_green.mob.ai=..0},distance=..10,limit=1] if score @s light_green.mob.ai matches 1 run function light_green:mob/piglin_warrior/defence/clear
execute if score $hurt light_green.main.math matches 9 if score @s light_green.mob.ai matches ..0 run function light_green:mob/piglin_warrior/defence/apply_hurt


execute on target run tag @s remove light_green.target