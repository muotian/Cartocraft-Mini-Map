scoreboard players add @s orange_timer 1

particle minecraft:dust_color_transition{from_color:[1.000,0.506,0.220],to_color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.5 4 normal

execute if score @s orange_timer matches 50 at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:fire[age=0]

execute if score @s orange_timer matches 50 run scoreboard players set @s orange_timer 0

execute as @s[tag=orange.warm.wind.silverfish, team=!orange_floating_creeper] run team join orange_floating_creeper

effect give @s glowing 1 1 true