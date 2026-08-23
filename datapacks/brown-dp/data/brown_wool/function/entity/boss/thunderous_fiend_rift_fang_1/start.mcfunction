# 執行者：
# 執行位置：同上
execute at @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] as @a[distance=..25,gamemode=survival] run tag @s add brown_wool.thunderous_fiend_rift_fang.player
execute at @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] positioned ~-30 ~10 ~-30 as @a[dx=50,dz=50,dy=10,tag=brown_wool.thunderous_fiend_rift_fang.player] run tag @s remove brown_wool.thunderous_fiend_rift_fang.player
execute at @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] positioned ~-30 ~-2.5 ~-30 as @a[dx=50,dz=50,dy=-10,tag=brown_wool.thunderous_fiend_rift_fang.player] run tag @s remove brown_wool.thunderous_fiend_rift_fang.player
bossbar set brown_wool.thunderous_fiend_rift_fang_1 players @a[tag=brown_wool.thunderous_fiend_rift_fang.player]
bossbar set brown_wool.thunderous_fiend_rift_fang_1 visible true
execute as @e[type=skeleton, tag=brown_wool.thunderous_fiend_rift_fang0 ,limit=1] run tag @s add brown_wool.thunderous_fiend_rift_fang_1
execute as @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] run tag @s add brown_wool.thunderous_fiend_rift_fang.terrain_2
kill @e[type=text_display,tag=brown_wool.thunderous_fiend_rift_fang.narrative0]
kill @e[type=interaction,tag=brown_wool.thunderous_fiend_rift_fang.narrative00]

playsound brown_wool:custom.keys_of_moon_thunder_unison record @a[tag=brown_wool.thunderous_fiend_rift_fang.player]

data modify entity @e[type=skeleton, tag=brown_wool.thunderous_fiend_rift_fang0 ,limit=1] Invulnerable set value false

tellraw @a[tag=brown_wool.thunderous_fiend_rift_fang.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunderous_fiend_rift_fang.start",color:"red"}]

execute as @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/terrain0


