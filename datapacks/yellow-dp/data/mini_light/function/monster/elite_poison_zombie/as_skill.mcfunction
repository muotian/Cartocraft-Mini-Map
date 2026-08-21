# 執行者、執行位置是marker

scoreboard players remove @s mini_light.monster_duration 1

execute if score @s mini_light.monster_duration matches ..10 at @s run function mini_light:monster/elite_poison_zombie/particle
execute if score @s mini_light.monster_duration matches ..0 run kill @s