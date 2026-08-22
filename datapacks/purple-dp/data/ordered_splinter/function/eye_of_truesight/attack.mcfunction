tag @s add wool_purple.sight_user
summon marker ^ ^1.5 ^1 {Tags:["wool_purple.sight"]}
data modify entity @n[type=marker,tag=wool_purple.sight] Rotation set from entity @s Rotation
execute as @e[type=marker,tag=wool_purple.sight] at @s run function ordered_splinter:eye_of_truesight/attack_raycast
playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 2 1.2
playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 2 2
playsound minecraft:block.conduit.deactivate player @a ~ ~ ~ 2 0.5