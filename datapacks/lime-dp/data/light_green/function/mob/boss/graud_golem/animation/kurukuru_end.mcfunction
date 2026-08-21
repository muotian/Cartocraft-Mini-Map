execute if score @s light_green.main.math matches 400 unless score @s light_green.custom.health matches 150.. run return run function light_green:mob/boss/graud_golem/skill/stand_up
execute if score @s light_green.main.math matches 800 unless score @s light_green.custom.health matches 100.. run return run function light_green:mob/boss/graud_golem/skill/stand_up
execute if score @s light_green.main.math matches 1200 unless score @s light_green.custom.health matches 50.. run return run function light_green:mob/boss/graud_golem/skill/stand_up
execute if score @s light_green.main.math matches 1600 unless score @s light_green.custom.health matches 0.. run return run function light_green:mob/boss/graud_golem/skill/die
scoreboard players add @s light_green.boss.animation 1