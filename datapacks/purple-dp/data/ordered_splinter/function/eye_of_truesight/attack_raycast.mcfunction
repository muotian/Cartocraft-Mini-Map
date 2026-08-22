# 執行者、執行位置是深淵窺視

execute rotated as @s if block ^ ^ ^0.1 #ordered_splinter:transparent run tp @s ^ ^ ^0.1
execute rotated as @s unless block ^ ^ ^0.1 #ordered_splinter:transparent run kill @s

execute positioned ^ ^ ^0.1 unless entity @a[tag=wool_purple.sight_user,distance=..20] run kill @s

execute positioned ~-.5 ~-.5 ~-.5 if entity @n[type=#mobs,dx=0,nbt=!{Invulnerable:1b}] run function ordered_splinter:eye_of_truesight/attack_damage
execute positioned ~-.5 ~-.5 ~-.5 if entity @n[type=#mobs,dx=0,nbt=!{Invulnerable:1b}] run kill @s

particle dust_color_transition{from_color:[0.290,0.290,0.290],to_color:[0.000,0.188,0.208],scale:1} ~ ~ ~ 0.05 0.05 0.05 0.0001 30

execute unless entity @e[type=marker,tag=wool_purple.sight] run tag @a[tag=wool_purple.sight_user] remove wool_purple.sight_user
execute unless entity @e[type=marker,tag=wool_purple.sight] run return fail
execute at @s run function ordered_splinter:eye_of_truesight/attack_raycast