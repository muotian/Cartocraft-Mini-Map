# 執行者、執行位置是玩家
scoreboard players operation $search mini_light.counter_shield_id = @s mini_light.counter_shield_id
execute as @e[type=item_display,tag=mini_light.counter_shield] if score @s mini_light.counter_shield_id = $search mini_light.counter_shield_id run tag @s add these

execute as @e[type=item_display,tag=mini_light.counter_shield,tag=these] rotated as @s run tp @s ~ ~ ~ ~3 ~

tag @e[tag=these] remove these