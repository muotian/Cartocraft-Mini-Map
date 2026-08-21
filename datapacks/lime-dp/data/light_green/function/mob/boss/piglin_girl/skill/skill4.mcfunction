function light_green:random {math1:1,math2:10}
execute if score $random light_green.main.math matches 1..3 run scoreboard players set $piglin_girl_skill4 light_green.main.math 1
execute if score $piglin_girl_skill4 light_green.main.math matches 1 if score $piglin_girl_weapon light_green.main.math matches 1 run function light_green:mob/boss/piglin_girl/skill/axe/throw1
execute if score $piglin_girl_skill4 light_green.main.math matches 1 if score $piglin_girl_weapon light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/skill/dagger/throw_start1
execute if score $piglin_girl_skill4 light_green.main.math matches 1 if score $piglin_girl_weapon light_green.main.math matches 3 run function light_green:mob/boss/piglin_girl/skill/spear/throw