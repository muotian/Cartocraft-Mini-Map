execute if score $piglin_girl_sprint_axe light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/skill/sprint_weapon
execute on target run tag @s add light_green.boss.piglin_girl.sprint_target
execute unless entity @n[tag=light_green.hit] run scoreboard players set $piglin_girl_skill2 light_green.main.math 0
execute unless entity @n[tag=light_green.boss.piglin_girl.sprint_target] run return run function light_green:mob/boss/piglin_girl/move/detect_attack_nothing
execute if score $piglin_girl.need.target_sprint light_green.main.math matches 1.. run scoreboard players reset $piglin_girl.need.target_sprint light_green.main.math
scoreboard players reset $piglin_girl_sprint light_green.main.math
tag @s remove light_green.target_sprint_ready
tag @s remove light_green.target_sprint_ready_spear
execute if score $piglin_girl_weapon light_green.main.math matches 1 at @s run return run function light_green:mob/boss/piglin_girl/skill/axe/sprint_target
execute if score $piglin_girl_weapon light_green.main.math matches 2 at @s run return run function light_green:mob/boss/piglin_girl/skill/dagger/sprint_target
execute if score $piglin_girl_weapon light_green.main.math matches 3 at @s run return run function light_green:mob/boss/piglin_girl/skill/spear/sprint_target