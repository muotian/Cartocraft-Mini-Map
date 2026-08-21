# 新的
scoreboard players set @s[tag=new] mini_light.monster_cooldown 80
tag @s[tag=new] remove new

# 剉冷卻

scoreboard players remove @s[scores={mini_light.monster_cooldown=1..}] mini_light.monster_cooldown 1

execute as @s[scores={mini_light.monster_cooldown=0}] at @s if entity @p[distance=..15] run function mini_light:monster/wither_reaper/prepare

# 剉前搖
scoreboard players remove @s[scores={mini_light.monster_prepare=1..}] mini_light.monster_prepare 1
execute as @s[scores={mini_light.monster_prepare=1}] run data modify entity @s NoAI set value 0b
execute as @s[scores={mini_light.monster_prepare=1}] run function mini_light:monster/wither_reaper/cast

# 剉中
execute as @s[scores={mini_light.monster_duration=1..}] at @s run function mini_light:monster/wither_reaper/reaping