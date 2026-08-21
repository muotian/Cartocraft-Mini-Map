scoreboard players reset $piglin_girl_dagger_hit light_green.main.math
execute if score $piglin_girl_weapon light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/skill/axe/throw1
execute if score $piglin_girl_weapon light_green.main.math matches 2 run return run function light_green:mob/boss/piglin_girl/skill/dagger/throw_start1
execute if score $piglin_girl_weapon light_green.main.math matches 3 run return run function light_green:mob/boss/piglin_girl/skill/spear/throw