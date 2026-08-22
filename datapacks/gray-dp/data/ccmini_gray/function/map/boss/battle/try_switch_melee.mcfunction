execute store result score $try_switch gray.boss.data run random value 1..6
execute if score $try_switch gray.boss.data matches 6 run function ccmini_gray:map/boss/battle/switch_melee
scoreboard players reset $try_switch gray.boss.data
