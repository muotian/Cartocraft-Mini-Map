execute if score @s light_green.break_defanse_time matches 1.. run function light_green:break_defance/tick
execute if score @s light_green.cant_move matches 1.. run function light_green:mob/boss/piglin_girl/cant_move/tick
execute if entity @s[tag=light_green.blood_apply] run function light_green:mob/boss/big_hoglin/rush_summon/blood/clear
execute if entity @s[tag=light_green.mud_apply] run function light_green:mob/boss/big_hoglin/rush_summon/mud/clear
execute if entity @s[tag=light_green.agony.math] run function light_green:mob/boss/piglin_girl/agony/damage/math
execute if entity @s[tag=light_green] run function light_green:my_mob