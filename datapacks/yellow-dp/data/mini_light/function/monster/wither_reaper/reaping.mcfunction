# 執行者、執行位置是要剉的怪物
particle smoke ~ ~ ~ 0.1 0.5 0.1 0.1 10
particle minecraft:dust_color_transition{from_color:[0.7f,0.0f,0.0f],to_color:[0.3f,0.1f,0.2f],scale:1.2} ~ ~1 ~ 0.1 0.1 0.1 0.1 5


execute at @s[scores={mini_light.monster_duration=20}] run playsound entity.wither.ambient hostile @a ~ ~ ~ 0.8 1
execute at @s[scores={mini_light.monster_duration=50}] run playsound entity.wither.ambient hostile @a ~ ~ ~ 0.8 1
execute at @s[scores={mini_light.monster_duration=80}] run playsound entity.wither.ambient hostile @a ~ ~ ~ 0.8 1
execute at @s[scores={mini_light.monster_duration=20}] run playsound entity.breeze.wind_burst hostile @a ~ ~ ~ 0.8 1
execute at @s[scores={mini_light.monster_duration=50}] run playsound entity.breeze.wind_burst hostile @a ~ ~ ~ 0.8 1
execute at @s[scores={mini_light.monster_duration=80}] run playsound entity.breeze.wind_burst hostile @a ~ ~ ~ 0.8 1

# 換裝備
item replace entity @s[scores={mini_light.monster_duration=80}] weapon.mainhand with golden_hoe
item replace entity @s[scores={mini_light.monster_duration=80}] weapon.offhand with air
item replace entity @s[scores={mini_light.monster_duration=50}] weapon.mainhand with air
item replace entity @s[scores={mini_light.monster_duration=50}] weapon.offhand with golden_hoe
item replace entity @s[scores={mini_light.monster_duration=20}] weapon.mainhand with golden_hoe
item replace entity @s[scores={mini_light.monster_duration=20}] weapon.offhand with golden_hoe
item replace entity @s[scores={mini_light.monster_duration=1}] weapon.mainhand with air
item replace entity @s[scores={mini_light.monster_duration=1}] weapon.offhand with air

# 移動
execute as @s[scores={mini_light.monster_duration=80}] facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @s[scores={mini_light.monster_duration=50}] facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @s[scores={mini_light.monster_duration=20}] facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute if function mini_light:monster/wither_reaper/check_score rotated ~ 0 run tp @s ^ ^ ^0.5
execute unless block ~ ~ ~ air run tp @s ~ ~0.5 ~
execute if block ~ ~-0.5 ~ air run tp @s ~ ~-0.5 ~

# 傷害
execute if score @s mini_light.monster_duration matches 60..80 positioned ^-1 ^ ^ positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=1,dz=0] run damage @s 7 mini_light:wither_reaper
execute if score @s mini_light.monster_duration matches 30..50 positioned ^1 ^ ^ positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=1,dz=0] run damage @s 7 mini_light:wither_reaper
execute if score @s mini_light.monster_duration matches 1..20 positioned ^-1 ^ ^ positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=1,dz=0] run damage @s 7 mini_light:wither_reaper
execute if score @s mini_light.monster_duration matches 1..20 positioned ^1 ^ ^ positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=1,dz=0] run damage @s 7 mini_light:wither_reaper

# 給予凋零效果
execute if score @s mini_light.monster_duration matches 60..80 positioned ^-1 ^ ^ positioned ~-0.5 ~ ~-0.5 run effect give @a[dx=0,dy=1,dz=0] wither 5 1 false
execute if score @s mini_light.monster_duration matches 30..50 positioned ^1 ^ ^ positioned ~-0.5 ~ ~-0.5 run effect give @a[dx=0,dy=1,dz=0] wither 5 1 false
execute if score @s mini_light.monster_duration matches 1..20 positioned ^-1 ^ ^ positioned ~-0.5 ~ ~-0.5 run effect give @a[dx=0,dy=1,dz=0] wither 5 1 false
execute if score @s mini_light.monster_duration matches 1..20 positioned ^1 ^ ^ positioned ~-0.5 ~ ~-0.5 run effect give @a[dx=0,dy=1,dz=0] wither 5 1 false

# 粒子效果
execute if score @s mini_light.monster_duration matches 60..80 positioned ^-1 ^0.8 ^ run particle sweep_attack
execute if score @s mini_light.monster_duration matches 30..50 positioned ^1 ^0.8 ^ run particle sweep_attack
execute if score @s mini_light.monster_duration matches 1..20 positioned ^-1 ^0.8 ^ run particle sweep_attack
execute if score @s mini_light.monster_duration matches 1..20 positioned ^1 ^0.8 ^ run particle sweep_attack

# 移除NoAI
execute if score @s mini_light.monster_duration matches 1 run data modify entity @s NoAI set value 0b

scoreboard players remove @s mini_light.monster_duration 1