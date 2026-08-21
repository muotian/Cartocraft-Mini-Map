item replace entity @n[tag=light_green.r_weapon] container.0 with stick[item_model="light_green:golden_spear"]
item replace entity @n[tag=light_green.l_weapon] container.0 with air
scoreboard players set $piglin_girl_weapon light_green.main.math 3
scoreboard players reset $piglin_girl_throw light_green.main.math
execute as @e[scores={light_green.agony=0..}] run function light_green:mob/boss/piglin_girl/agony/damage/0