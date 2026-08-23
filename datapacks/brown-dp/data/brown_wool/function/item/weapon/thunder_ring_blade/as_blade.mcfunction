# 執行者：流光雷環刃
# 執行位置：同上



#

execute if entity @s[tag=brown_wool.thunder_ring_blade1] unless score @s brown_wool.thunder_ring_blade1 matches 1.. run summon minecraft:marker ~ ~ ~ {Tags:["brown_wool.thunder_ring_blade1.0","brown_wool.thunder_ring_blade0"]}
execute if entity @s[tag=brown_wool.thunder_ring_blade2] unless score @s brown_wool.thunder_ring_blade1 matches 1.. run summon minecraft:marker ~ ~ ~ {Tags:["brown_wool.thunder_ring_blade2.0","brown_wool.thunder_ring_blade0"]}
execute if entity @s[tag=brown_wool.thunder_ring_blade3] unless score @s brown_wool.thunder_ring_blade1 matches 1.. run summon minecraft:marker ~ ~ ~ {Tags:["brown_wool.thunder_ring_blade3.0","brown_wool.thunder_ring_blade0"]}
execute if entity @s[tag=brown_wool.thunder_ring_blade4] unless score @s brown_wool.thunder_ring_blade1 matches 1.. run summon minecraft:marker ~ ~ ~ {Tags:["brown_wool.thunder_ring_blade4.0","brown_wool.thunder_ring_blade0"]}


execute unless entity @n[distance=..60,tag=!brown_wool.thunder_ring_blade0] run kill @s
scoreboard players add @s brown_wool.thunder_ring_blade1 1

execute if entity @s[tag=brown_wool.thunder_ring_blade1] if block ^ ^ ^0.1 #is_air if block ^ ^ ^0.2 #is_air if block ^ ^ ^0.3 #is_air run tp @s ^ ^ ^0.3
execute if entity @s[tag=brown_wool.thunder_ring_blade2] if block ^ ^ ^0.1 #is_air if block ^ ^ ^0.2 #is_air if block ^ ^ ^0.3 #is_air run tp @s ^ ^ ^0.3
execute if entity @s[tag=brown_wool.thunder_ring_blade3] if block ^ ^ ^0.1 #is_air if block ^ ^ ^0.2 #is_air if block ^ ^ ^0.3 #is_air run tp @s ^ ^ ^0.3
execute if entity @s[tag=brown_wool.thunder_ring_blade4] if block ^ ^ ^0.1 #is_air if block ^ ^ ^0.2 #is_air if block ^ ^ ^0.3 #is_air run tp @s ^ ^ ^0.3

execute if entity @s[tag=brown_wool.thunder_ring_blade1.0] at @n[type=marker,tag=brown_wool.thunder_ring_blade1] run tp @s ~ ~ ~
execute if entity @s[tag=brown_wool.thunder_ring_blade2.0] at @n[type=marker,tag=brown_wool.thunder_ring_blade2] run tp @s ~ ~ ~
execute if entity @s[tag=brown_wool.thunder_ring_blade3.0] at @n[type=marker,tag=brown_wool.thunder_ring_blade3] run tp @s ~ ~ ~
execute if entity @s[tag=brown_wool.thunder_ring_blade4.0] at @n[type=marker,tag=brown_wool.thunder_ring_blade4] run tp @s ~ ~ ~

execute if entity @s[tag=brown_wool.thunder_ring_blade1.0] run rotate @s ~13 ~
execute if entity @s[tag=brown_wool.thunder_ring_blade2.0] run rotate @s ~13 ~
execute if entity @s[tag=brown_wool.thunder_ring_blade3.0] run rotate @s ~21 ~
execute if entity @s[tag=brown_wool.thunder_ring_blade4.0] run rotate @s ~21 ~

execute if entity @s[tag=brown_wool.thunder_ring_blade1.0] run particle electric_spark ^5 ^ ^ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=brown_wool.thunder_ring_blade1.0] run particle electric_spark ^-5 ^ ^ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=brown_wool.thunder_ring_blade2.0] run particle electric_spark ^5 ^ ^ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=brown_wool.thunder_ring_blade2.0] run particle electric_spark ^-5 ^ ^ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=brown_wool.thunder_ring_blade3.0] run particle electric_spark ^5 ^ ^ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=brown_wool.thunder_ring_blade3.0] run particle electric_spark ^-5 ^ ^ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=brown_wool.thunder_ring_blade4.0] run particle electric_spark ^5 ^ ^ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=brown_wool.thunder_ring_blade4.0] run particle electric_spark ^-5 ^ ^ 0.2 0.2 0.2 0.1 5


execute if entity @s[tag=brown_wool.thunder_ring_blade1.0] at @s positioned ^5 ^ ^ as @e[distance=..1.5,type=!player,type=!item,type=!painting,type=!item_frame] run damage @s 4 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.thunder_ring_blade1.0] at @s positioned ^-5 ^ ^ as @e[distance=..1.5,type=!player,type=!item,type=!painting,type=!item_frame] run damage @s 4 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.thunder_ring_blade2.0] at @s positioned ^5 ^ ^ as @e[distance=..1.5,type=!player,type=!item,type=!painting,type=!item_frame] run damage @s 4 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.thunder_ring_blade2.0] at @s positioned ^-5 ^ ^ as @e[distance=..1.5,type=!player,type=!item,type=!painting,type=!item_frame] run damage @s 4 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.thunder_ring_blade3.0] at @s positioned ^5 ^ ^ as @e[distance=..1.5,type=!player,type=!item,type=!painting,type=!item_frame] run damage @s 4.6 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.thunder_ring_blade3.0] at @s positioned ^-5 ^ ^ as @e[distance=..1.5,type=!player,type=!item,type=!painting,type=!item_frame] run damage @s 4.6 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.thunder_ring_blade4.0] at @s positioned ^5 ^ ^ as @e[distance=..1.5,type=!player,type=!item,type=!painting,type=!item_frame] run damage @s 4.6 brown_wool:bypasses_cooldown2
execute if entity @s[tag=brown_wool.thunder_ring_blade4.0] at @s positioned ^-5 ^ ^ as @e[distance=..1.5,type=!player,type=!item,type=!painting,type=!item_frame] run damage @s 4.6 brown_wool:bypasses_cooldown2
execute if score @s brown_wool.thunder_ring_blade1 matches 160.. run kill @s


