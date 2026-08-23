# 執行者：
# 執行位置：同上
execute at @e[type=marker, tag=brown_wool.thunder_shadow_guard.terrain ,limit=1] as @a[distance=..17.5,gamemode=survival] run tag @s add brown_wool.thunder_shadow_guard.player
execute at @e[type=marker, tag=brown_wool.thunder_shadow_guard.terrain ,limit=1] positioned ~-20 ~10.5 ~-20 as @a[dx=34,dz=34,dy=6,tag=brown_wool.thunder_shadow_guard.player] run tag @s remove brown_wool.thunder_shadow_guard.player
execute at @e[type=marker, tag=brown_wool.thunder_shadow_guard.terrain ,limit=1] positioned ~-20 ~-1.5 ~-20 as @a[dx=34,dz=34,dy=-6,tag=brown_wool.thunder_shadow_guard.player] run tag @s remove brown_wool.thunder_shadow_guard.player
bossbar set brown_wool.thunder_shadow_guard players @a[tag=brown_wool.thunder_shadow_guard.player]
bossbar set brown_wool.thunder_shadow_guard visible true
execute as @e[type=wither_skeleton, tag=brown_wool.thunder_shadow_guard0 ,limit=1] run tag @s add brown_wool.thunder_shadow_guard
execute as @e[type=marker, tag=brown_wool.thunder_shadow_guard.terrain ,limit=1] run tag @s add brown_wool.thunder_shadow_guard.terrain_2
kill @e[type=text_display,tag=brown_wool.thunder_shadow_guard.narrative0]
kill @e[type=interaction,tag=brown_wool.thunder_shadow_guard.narrative00]

playsound brown_wool:custom.fire_and_thunder record @a[tag=brown_wool.thunder_shadow_guard.player]

data modify entity @e[type=wither_skeleton, tag=brown_wool.thunder_shadow_guard0 ,limit=1] Invulnerable set value false

tellraw @a[tag=brown_wool.thunder_shadow_guard.player] [{text:"<",color:"dark_purple"},{translate:"entity.brown_wool.thunder_shadow_guard",color:"dark_purple"},{text:">",color:"dark_purple"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_shadow_guard.start",color:"dark_purple"}]

execute as @e[type=marker, tag=brown_wool.thunder_shadow_guard.terrain ,limit=1] at @s run function brown_wool:entity/boss/thunder_shadow_guard/terrain0


