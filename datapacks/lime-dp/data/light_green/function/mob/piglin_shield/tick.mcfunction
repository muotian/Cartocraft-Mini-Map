execute if score @s light_green.mob.ai matches 0.. run scoreboard players remove @s light_green.mob.ai 1
execute if score @s light_green.mob.ai matches 0 run function light_green:mob/piglin_shield/block_apply
execute if score @s light_green.main.math matches 1 run function light_green:mob/piglin_shield/block_clear