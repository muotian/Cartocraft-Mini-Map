item replace entity @n[tag=light_green.r_weapon] container.0 with stick[item_model="light_green:golden_dagger"]
item replace entity @n[tag=light_green.l_weapon] container.0 with air
scoreboard players set $piglin_girl_weapon light_green.main.math 2
scoreboard players reset $piglin_girl_throw light_green.main.math
scoreboard players reset $piglin_girl_dagger_hit
execute if score $piglin_girl_level light_green.main.math matches 2 if entity @n[tag=light_green.target,distance=7..15] run return run tag @s add light_green.target_sprint_ready_dagger