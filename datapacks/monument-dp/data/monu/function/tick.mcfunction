# 加跑速
execute at @e[type=marker,tag=monu_center,limit=1] run effect give @a[distance=..30] minecraft:speed 1 1 true

# 粒子效果
# execute at @e[type=marker,tag=monument-center,limit=1] run particle minecraft:enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.01 5
execute positioned as @e[type=marker,tag=monu_center,limit=1] run execute at @a[distance=..30] run particle minecraft:enchanted_hit ~ ~ ~ 0.2 0 0.2 0.02 1

execute at @e[tag=energy_bolt,type=item_display] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute as @e[tag=energy_bolt,type=item_display] at @s run tp @s ^ ^ ^0.25
execute at @e[tag=energy_bolt,type=item_display] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute as @e[tag=energy_bolt,type=item_display] at @s run tp @s ^ ^ ^0.25
execute at @e[tag=energy_bolt,type=item_display] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute as @e[tag=energy_bolt,type=item_display] at @s run tp @s ^ ^ ^0.25
execute at @e[tag=energy_bolt,type=item_display] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute as @e[tag=energy_bolt,type=item_display] at @s run tp @s ^ ^ ^0.25

# 每一刻幫所有計時器減 1 分
scoreboard players remove @e[tag=delay_timer] monu_timer 1
# 當分數到 0 時，抓取該 Marker 的資料並執行 finish_hit
execute as @e[tag=delay_timer,scores={monu_timer=0}] run function monu:wool/finish_hit with entity @s data

# 16 色全部完成後，觸發最終特效（只觸發一次）
execute if score $global monu_complete_flag matches 0 as @a[scores={monu_return=16..},limit=1] run function monu:wool/complete