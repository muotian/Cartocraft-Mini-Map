execute as @a[distance=..17.5 ,tag=!brown_wool.thunder_shadow_guard.player] at @n[tag=brown_wool.thunder_shadow_guard.terrain_2] run tp @s ~-18.5 ~ ~
execute as @a[distance=17.6.. ,tag=brown_wool.thunder_shadow_guard.player] at @n[tag=brown_wool.thunder_shadow_guard.terrain_2] run tp @s ~ ~ ~

execute positioned ~-17 ~10.5 ~-17 as @a[dx=34,dz=34,dy=6,tag=brown_wool.thunder_shadow_guard.player] at @n[tag=brown_wool.thunder_shadow_guard.terrain_2] run tp @s ~ ~ ~
execute positioned ~-17 ~-1.5 ~-17 as @a[dx=34,dz=34,dy=-6,tag=brown_wool.thunder_shadow_guard.player] at @n[tag=brown_wool.thunder_shadow_guard.terrain_2] run tp @s ~ ~ ~


execute at @s run tag @a[distance=..30 ,gamemode=survival] add brown_wool.thunder_shadow_guard.adventure



