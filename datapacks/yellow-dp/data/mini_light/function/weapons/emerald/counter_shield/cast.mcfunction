# 執行者、執行位置是玩家
execute unless score @s mini_light.counter_shield_id matches -2147483648..2147483647 run function mini_light:weapons/emerald/counter_shield/init_id
summon item_display ~ ~ ~ {Tags:["mini_light.counter_shield","new"],item:{id:"emerald",count:1},teleport_duration:1,transformation:{left_rotation:[0.0d,0.0d,0.0d,1.0d],right_rotation:[0.0d,0.0d,0.0d,1.0d],scale:[0.7d,0.7d,0.7d],translation:[0.0d,0.8d,1.0d]}}
scoreboard players operation @e[tag=mini_light.counter_shield,tag=new,type=item_display] mini_light.counter_shield_id = @s mini_light.counter_shield_id
function mini_light:weapons/emerald/counter_shield/divide_angle
tag @e[tag=new] remove new

scoreboard players add @s mini_light.counter_shield_count 1