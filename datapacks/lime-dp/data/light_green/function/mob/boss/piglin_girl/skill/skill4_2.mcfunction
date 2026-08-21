scoreboard players reset $piglin_girl_skill4 light_green.main.math
execute if score $piglin_girl_weapon light_green.main.math matches 1 run function light_green:mob/boss/piglin_girl/skill/axe/1
execute if score $piglin_girl_weapon light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/skill/dagger/start_1
execute if score $piglin_girl_weapon light_green.main.math matches 3 run scoreboard players set $piglin_girl_skill4 light_green.main.math 2
execute if score $piglin_girl_weapon light_green.main.math matches 3 run function light_green:mob/boss/piglin_girl/skill/spear/1_deal