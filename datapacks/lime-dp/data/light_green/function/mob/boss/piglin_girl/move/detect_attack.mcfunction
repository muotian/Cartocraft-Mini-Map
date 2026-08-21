scoreboard players reset @s light_green.boss.attack_type
scoreboard players set @s light_green.move_step 0
execute if score $move light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/move/on_attack
execute unless score $move light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/move/off