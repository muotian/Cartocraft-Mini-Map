execute store result score $y light_green.main.math run data get entity @s Pos[1] 100
execute unless score $y light_green.main.math < $damage_y_detect light_green.main.math run return fail
damage @s 7 light_green:axe_earth_quake by @e[tag=light_green.boss.piglin_girl,limit=1,type=piglin_brute]
function light_green:mob/boss/piglin_girl/animation/add_weapon_time
function light_green:mob/boss/piglin_girl/animation/axe/add_break_defance