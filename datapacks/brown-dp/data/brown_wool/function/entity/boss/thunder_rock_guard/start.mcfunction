# 執行者：
# 執行位置：同上
execute at @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] as @a[distance=..17.5,gamemode=survival] run tag @s add brown_wool.thunder_rock_guard.player
execute at @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] positioned ~-17 ~6.5 ~-17 as @a[dx=34,dz=34,dy=6,tag=brown_wool.thunder_rock_guard.player] run tag @s remove brown_wool.thunder_rock_guard.player
execute at @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] positioned ~-17 ~-1.5 ~-17 as @a[dx=34,dz=34,dy=-6,tag=brown_wool.thunder_rock_guard.player] run tag @s remove brown_wool.thunder_rock_guard.player
bossbar set brown_wool.thunder_rock_guard players @a[tag=brown_wool.thunder_rock_guard.player]
bossbar set brown_wool.thunder_rock_guard visible true
execute as @e[type=husk, tag=brown_wool.thunder_rock_guard0 ,limit=1] run tag @s add brown_wool.thunder_rock_guard
execute as @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] run tag @s add brown_wool.thunder_rock_guard.terrain_2
kill @e[type=text_display,tag=brown_wool.thunder_rock_guard.narrative0]
kill @e[type=interaction,tag=brown_wool.thunder_rock_guard.narrative00]
playsound brown_wool:custom.kaiji_dance_with_the_devil record @a[tag=brown_wool.thunder_rock_guard.player]

data modify entity @e[type=husk, tag=brown_wool.thunder_rock_guard0 ,limit=1] Invulnerable set value false
tellraw @a[tag=brown_wool.thunder_rock_guard.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunder_rock_guard",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_rock_guard.start",color:"red"}]

execute as @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] at @s run function brown_wool:entity/boss/thunder_rock_guard/terrain0


