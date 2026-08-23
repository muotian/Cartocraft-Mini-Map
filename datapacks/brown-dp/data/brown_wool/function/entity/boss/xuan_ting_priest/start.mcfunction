# 執行者：玄霆祭司
# 執行位置：同上
execute at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] as @a[dx=17,dz=17,dy=6,gamemode=survival] run tag @s add brown_wool.xuan_ting_priest.player
execute at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] as @a[dx=-17,dz=17,dy=6,gamemode=survival] run tag @s add brown_wool.xuan_ting_priest.player
execute at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] as @a[dx=17,dz=-17,dy=6,gamemode=survival] run tag @s add brown_wool.xuan_ting_priest.player
execute at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] as @a[dx=-17,dz=-17,dy=6,gamemode=survival] run tag @s add brown_wool.xuan_ting_priest.player

execute at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] positioned ~-20 ~5.5 ~-20 as @a[dx=40,dz=40,dy=6,tag=brown_wool.xuan_ting_priest.player] run tag @s remove brown_wool.xuan_ting_priest.player


bossbar set brown_wool.xuan_ting_priest players @a[tag=brown_wool.xuan_ting_priest.player]
bossbar set brown_wool.xuan_ting_priest visible true
execute as @e[type=stray, tag=brown_wool.xuan_ting_priest0 ,limit=1] run tag @s add brown_wool.xuan_ting_priest
execute as @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run tag @s add brown_wool.xuan_ting_priest.terrain_2
kill @e[type=text_display,tag=brown_wool.xuan_ting_priest.narrative0]
kill @e[type=interaction,tag=brown_wool.xuan_ting_priest.narrative00]

playsound brown_wool:custom.jingle_punks_cataclysmic_molten_core record @a[tag=brown_wool.xuan_ting_priest.player]

data modify entity @e[type=stray, tag=brown_wool.xuan_ting_priest0 ,limit=1] Invulnerable set value false

tellraw @a[tag=brown_wool.xuan_ting_priest.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.xuan_ting_priest",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.xuan_ting_priest.start",color:"red"}]


execute as @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] at @s run function brown_wool:entity/boss/xuan_ting_priest/terrain0



