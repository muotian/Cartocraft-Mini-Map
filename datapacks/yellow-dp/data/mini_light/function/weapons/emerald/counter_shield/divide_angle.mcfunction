# 執行者、執行位置是玩家
scoreboard players operation $search mini_light.counter_shield_id = @s mini_light.counter_shield_id
execute as @e[tag=mini_light.counter_shield,type=item_display] if score @s mini_light.counter_shield_id = $search mini_light.counter_shield_id run tag @s add these

execute store result score $angle mini_light.main run data get entity @e[limit=1,sort=arbitrary,type=item_display,tag=mini_light.counter_shield,tag=these] Rotation[0] 1
execute store result score $anchor_count mini_light.main if entity @e[tag=mini_light.counter_shield,tag=these,type=item_display]
scoreboard players set $divid_angle mini_light.main 360
scoreboard players operation $divid_angle mini_light.main /= $anchor_count mini_light.main

execute as @e[tag=mini_light.counter_shield,tag=these,type=item_display] run function mini_light:weapons/emerald/counter_shield/_divide_angle

tag @e[tag=these] remove these