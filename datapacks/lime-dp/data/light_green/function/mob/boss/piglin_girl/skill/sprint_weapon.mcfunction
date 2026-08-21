execute unless score $piglin_girl_sprint_axe light_green.main.math matches 1 if entity @n[tag=light_green.hit,distance=5..] run tag @s add light_green.take
execute unless score $piglin_girl_sprint_axe light_green.main.math matches 1 as @n[tag=light_green.hit,distance=5..] run tag @s add light_green.boss.piglin_girl.sprint_target
execute unless score $piglin_girl_sprint_axe light_green.main.math matches 1 if entity @s[tag=!light_green.take] as @n[tag=light_green.hit] run tag @s add light_green.boss.piglin_girl.sprint_target
execute if score $piglin_girl_sprint_axe light_green.main.math matches 1 if entity @n[tag=light_green.hit,tag=light_green.boss.piglin_girl.axe,distance=5..] run tag @s add light_green.take
execute if score $piglin_girl_sprint_axe light_green.main.math matches 1 as @n[tag=light_green.hit,tag=light_green.boss.piglin_girl.axe,distance=5..] run tag @s add light_green.boss.piglin_girl.sprint_target
execute if score $piglin_girl_sprint_axe light_green.main.math matches 1 if entity @s[tag=!light_green.take] as @n[tag=light_green.hit,tag=light_green.boss.piglin_girl.axe] run tag @s add light_green.boss.piglin_girl.sprint_target
tag @s remove light_green.take
execute unless entity @n[tag=light_green.boss.piglin_girl.sprint_target] run return fail
execute if entity @n[tag=light_green.boss.piglin_girl.sprint_target,tag=light_green.boss.piglin_girl.axe] run scoreboard players add $piglin_girl_sprint_axe light_green.main.math 1
execute if score $piglin_girl_sprint_axe light_green.main.math matches 2 run scoreboard players reset $piglin_girl_sprint_axe
execute if entity @n[tag=light_green.boss.piglin_girl.sprint_target,tag=light_green.boss.piglin_girl.dagger] run scoreboard players add $piglin_girl_dagger_throw_target light_green.main.math 1
tag @s add light_green.target_sprint_ready
execute if score $piglin_girl_weapon light_green.main.math matches 1 at @s run return run function light_green:mob/boss/piglin_girl/skill/axe/sprint_weapon
execute if score $piglin_girl_weapon light_green.main.math matches 2 at @s run return run function light_green:mob/boss/piglin_girl/skill/dagger/sprint_weapon
execute if score $piglin_girl_weapon light_green.main.math matches 3 at @s run return run function light_green:mob/boss/piglin_girl/skill/spear/sprint_weapon