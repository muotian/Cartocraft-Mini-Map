# 執行者：
# 執行位置：同上
execute at @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] positioned ~-15.5 ~-0.5 ~-15.5 as @a[dx=30,dz=30,dy=6] run tag @s add brown_wool.cangting_general.player
bossbar set brown_wool.cangting_general players @a[tag=brown_wool.cangting_general.player]
bossbar set brown_wool.cangting_general visible true
execute as @e[type=zombie, tag=brown_wool.cangting_general0 ,limit=1] run tag @s add brown_wool.cangting_general
execute as @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run tag @s add brown_wool.cangting_general.terrain_2

kill @e[type=text_display,tag=brown_wool.cangting_general.narrative0]
kill @e[type=interaction,tag=brown_wool.cangting_general.narrative00]
playsound brown_wool:custom.makai_symphony_dragon_castle record @a[tag=brown_wool.cangting_general.player]

data modify entity @e[type=zombie, tag=brown_wool.cangting_general0 ,limit=1] Invulnerable set value false
data modify entity @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse ,limit=1] Invulnerable set value false

tellraw @a[tag=brown_wool.cangting_general.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.cangting_general",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.cangting_general.start",color:"red"}]

execute as @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] at @s run function brown_wool:entity/boss/cangting_general/terrain0

