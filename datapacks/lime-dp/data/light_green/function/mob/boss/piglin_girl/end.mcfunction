scoreboard players add $killed_by_piglin_girl light_green.main.math 1
execute unless score $area_end light_green.main.math matches 1 if score $piglin_girl_level2 light_green.main.math matches 1 run function light_green:area_level/piglin_girl_say
execute unless score $area_end light_green.main.math matches 1 if score $killed_by_piglin_girl light_green.main.math matches 5 run function light_green:area_level/piglin_girl_say
execute if score $take_wool light_green.main.math matches 1 if score $piglin_girl_level2 light_green.main.math matches 1 run scoreboard players set $take_wool light_green.main.math 2
function light_green:arena/quit/0.
function light_green:mob/boss/piglin_girl/kill