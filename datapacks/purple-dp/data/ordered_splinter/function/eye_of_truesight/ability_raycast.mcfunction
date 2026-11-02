execute positioned ^ ^ ^0.25 if block ~ ~ ~ #ordered_splinter:transparent if entity @p[distance=..40] run function ordered_splinter:eye_of_truesight/ability_raycast
execute anchored eyes positioned ^ ^ ^ run particle gust ^ ^ ^ 0.0005 0.0005 0.0005 0.00001 1 force @a
execute anchored eyes positioned ^ ^ ^ run particle gust ^ ^ ^0.125 0.0005 0.0005 0.0005 0.00001 1 force @a
execute anchored eyes positioned ^ ^ ^ run particle ominous_spawning ^ ^ ^ 0.1 0.1 0.1 0.00001 15 force @a
execute anchored eyes positioned ~-.5 ~-.5 ~-.5 if entity @n[type=#mobs,dx=0,nbt=!{Invulnerable:1b}] run function ordered_splinter:eye_of_truesight/ability_damage
execute as @s run scoreboard players set @s wool_purple.ability_cd 600