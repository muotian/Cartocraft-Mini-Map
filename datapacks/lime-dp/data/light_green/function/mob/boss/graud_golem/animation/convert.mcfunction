scoreboard players remove @s light_green.boss.animation 1

execute if score @s light_green.boss.attack_type matches 0 run return run function light_green:mob/boss/graud_golem/animation/summon
execute if score @s light_green.boss.attack_type matches 1 run return run function light_green:mob/boss/graud_golem/animation/kurukuru_1
execute if score @s light_green.boss.attack_type matches 2 run return run function light_green:mob/boss/graud_golem/animation/kurukuru_2
execute if score @s light_green.boss.attack_type matches 3 run return run function light_green:mob/boss/graud_golem/animation/kurukuru_3
execute if score @s light_green.boss.attack_type matches 4 run return run function light_green:mob/boss/graud_golem/animation/kurukuru_end
execute if score @s light_green.boss.attack_type matches 5 run return run function light_green:mob/boss/graud_golem/animation/stand_up
execute if score @s light_green.boss.attack_type matches 6 run return run function light_green:mob/boss/graud_golem/animation/die

execute if score @s light_green.boss.attack_type matches 7 run return run function light_green:mob/boss/graud_golem/animation/step/1
execute if score @s light_green.boss.attack_type matches 8 run return run function light_green:mob/boss/graud_golem/animation/step/2
execute if score @s light_green.boss.attack_type matches 9 run return run function light_green:mob/boss/graud_golem/animation/step/3
execute if score @s light_green.boss.attack_type matches 10 run return run function light_green:mob/boss/graud_golem/animation/step/4

execute if score @s light_green.boss.attack_type matches 11 run return run function light_green:mob/boss/graud_golem/animation/down
execute if score @s light_green.boss.attack_type matches 12 run return run function light_green:mob/boss/graud_golem/animation/step