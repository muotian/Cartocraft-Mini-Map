# 執行者、執行位置是spark



execute if score @s mini_light.duration matches 70..100 facing entity @p eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^25 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute rotated as @s run tp @s ^ ^ ^0.25
execute at @s run function mini_light:monster/super_evoker/dark_spark/particle

execute positioned ~ ~-1.4 ~ if entity @p[distance=..0.5] run function mini_light:monster/super_evoker/dark_spark/hit
