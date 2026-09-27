execute as @e[type=!#light_green:no_hp,type=!player] at @s if score @s light_green.break_defanse_time matches 1.. run function light_green:break_defance/tick
execute as @e[type=!#light_green:no_hp,type=!player] at @s if score @s light_green.cant_move matches 1.. run function light_green:mob/boss/piglin_girl/cant_move/tick
execute as @e[type=!#light_green:no_hp,type=!player] at @s if entity @s[tag=light_green.blood_apply] run function light_green:mob/boss/big_hoglin/rush_summon/blood/clear
execute as @e[type=!#light_green:no_hp,type=!player] at @s if entity @s[tag=light_green.mud_apply] run function light_green:mob/boss/big_hoglin/rush_summon/mud/clear
execute as @e[type=!#light_green:no_hp,type=!player] at @s if entity @s[tag=light_green.agony.math] run function light_green:mob/boss/piglin_girl/agony/damage/math
execute as @e[type=!#light_green:no_hp,type=!player] at @s if entity @s[tag=light_green] run function light_green:my_mob