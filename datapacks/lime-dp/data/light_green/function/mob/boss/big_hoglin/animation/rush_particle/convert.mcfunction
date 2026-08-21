execute if score $hoglin_limit light_green.main.math matches 1 run return run function light_green:mob/boss/big_hoglin/animation/rush_particle/convert_15_
execute if score @s light_green.mob.ai matches 1.. run return run particle dust_color_transition{from_color:13500416,scale:2,to_color:2686976} ~ ~ ~ 1 1.5 1 1 20
execute if score @s light_green.custom.health matches 240..300 run particle dust_color_transition{from_color:16777215,scale:2,to_color:2686976} ~ ~ ~ 1 1.5 1 1 5
execute if score @s light_green.custom.health matches 180..239 run particle dust_color_transition{from_color:13500416,scale:2,to_color:2686976} ~ ~ ~ 1 1.5 1 1 5
execute if score @s light_green.custom.health matches 120..179 run particle dust_color_transition{from_color:13500416,scale:2,to_color:2686976} ~ ~ ~ 1 1.5 1 1 10
execute if score @s light_green.custom.health matches 60..119 run particle dust_color_transition{from_color:13500416,scale:2,to_color:2686976} ~ ~ ~ 1 1.5 1 1 15
execute if score @s light_green.custom.health matches 0..59 run particle dust_color_transition{from_color:13500416,scale:2,to_color:2686976} ~ ~ ~ 1 1.5 1 1 20