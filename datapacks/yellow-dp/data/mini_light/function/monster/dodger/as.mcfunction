

# 新的

scoreboard players set @s[tag=new] mini_light.monster_cooldown 80
tag @s[tag=new] remove new

# 躲避冷卻

scoreboard players remove @s[scores={mini_light.monster_cooldown=1..}] mini_light.monster_cooldown 1

execute as @s[scores={mini_light.monster_cooldown=..0}] at @s if entity @p[distance=..4] run function mini_light:monster/dodger/dodge

effect give @s[scores={mini_light.monster_duration=20}] invisibility 1 0 false

# 躲避中

execute as @s[scores={mini_light.monster_duration=1..}] at @s run function mini_light:monster/dodger/dodging



