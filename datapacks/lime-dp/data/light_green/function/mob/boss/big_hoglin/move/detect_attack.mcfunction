scoreboard players reset @s light_green.boss.attack_type
execute if score $move light_green.main.math matches 1 run return run function light_green:mob/boss/big_hoglin/move/on_attack
execute unless score $move light_green.main.math matches 1 run return run function light_green:mob/boss/big_hoglin/move/off