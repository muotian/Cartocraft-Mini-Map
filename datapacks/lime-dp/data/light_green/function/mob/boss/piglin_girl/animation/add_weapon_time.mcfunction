execute if entity @s[advancements={light_green:blocked=true}] run return fail
scoreboard players add $piglin_girl_hit light_green.main.math 1
execute if score $piglin_girl_weapon light_green.main.math matches 1 run scoreboard players remove $piglin_girl_throw light_green.main.math 25
execute if score $piglin_girl_weapon light_green.main.math matches 2 run scoreboard players remove $piglin_girl_throw light_green.main.math 10
execute if score $piglin_girl_weapon light_green.main.math matches 3 run scoreboard players remove $piglin_girl_throw light_green.main.math 35