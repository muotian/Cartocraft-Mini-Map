execute if score $piglin_girl_dagger_hit light_green.main.math matches 20..
execute if entity @n[tag=light_green.target,distance=8..] if score @s light_green.main.math matches 200.. run return run scoreboard players add $piglin_girl_throw light_green.main.math 9
execute rotated ~ 0 positioned ^ ^ ^1 if entity @n[tag=light_green.target,distance=..3] run return run function light_green:mob/boss/piglin_girl/skill/dagger/start_1
execute if score @s light_green.main.math matches 200.. run scoreboard players add $piglin_girl_throw light_green.main.math 4