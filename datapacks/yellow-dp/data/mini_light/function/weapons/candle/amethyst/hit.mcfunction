# 執行者、執行位置是glow_next

tag @s remove mini_light.glow_next
tag @s add mini_light.glow_hit
effect give @s[predicate=!mini_light:weapons/glowing] glowing 15 0 false

# 如果有非己發光未擊中實體，連結他
execute if entity @e[type=#mini_light:mobs, type=!player, tag=!mini_light.glow_hit, distance=0.1..30, predicate=mini_light:weapons/glowing] run tag @n[type=#mini_light:mobs, type=!player, tag=!mini_light.glow_hit, distance=0.1..30, predicate=mini_light:weapons/glowing] add mini_light.glow_next
# 否則連結普通(非發光)非己未擊中實體
execute unless entity @e[tag=mini_light.glow_next] if score $glow_count mini_light.main matches 2.. run scoreboard players set $glow_count mini_light.main 1
execute unless entity @e[tag=mini_light.glow_next] run tag @n[type=#mini_light:mobs, type=!player, tag=!mini_light.glow_hit, distance=0.1..30, predicate=!mini_light:weapons/glowing] add mini_light.glow_next

execute if score $glow_count mini_light.main matches 0.. run scoreboard players set $itt mini_light.main 30
execute if score $glow_count mini_light.main matches 0.. run scoreboard players remove $glow_count mini_light.main 1
execute if score $glow_count mini_light.main matches 0.. anchored eyes facing entity @n[tag=mini_light.glow_next] eyes run function mini_light:weapons/candle/amethyst/raycast
