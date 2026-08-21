# 執行者、執行位置是玩家
scoreboard players operation $search mini_light.counter_shield_id = @s mini_light.counter_shield_id
execute as @e[tag=mini_light.counter_shield,type=item_display] if score @s mini_light.counter_shield_id = $search mini_light.counter_shield_id run tag @s add these
$kill @e[sort=random,limit=$(amount),type=item_display,tag=mini_light.counter_shield,tag=these]
function mini_light:weapons/emerald/counter_shield/divide_angle
tag @e[tag=these] remove these