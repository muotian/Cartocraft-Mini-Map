# 執行者：
# 執行位置：同上
execute at @e[type=marker, tag=brown_wool.thunder_spirit.terrain ,limit=1] as @a[distance=..26,gamemode=survival] run tag @s add brown_wool.thunder_spirit.player
execute unless entity @e[type=marker,tag=brown_wool.thunder_spirit.terrain_3] run bossbar set brown_wool.thunder_spirit players @a[tag=brown_wool.thunder_spirit.player]
execute unless entity @e[type=marker,tag=brown_wool.thunder_spirit.terrain_3] run bossbar set brown_wool.thunder_spirit visible true
execute if entity @e[type=marker,tag=brown_wool.thunder_spirit.terrain_3] run bossbar set brown_wool.thunder_spirit2 players @a[tag=brown_wool.thunder_spirit.player]
execute if entity @e[type=marker,tag=brown_wool.thunder_spirit.terrain_3] run bossbar set brown_wool.thunder_spirit2 visible true
execute as @e[type=allay, tag=brown_wool.thunder_spirit0 ,limit=1] run tag @s add brown_wool.thunder_spirit
execute as @e[type=marker, tag=brown_wool.thunder_spirit.terrain ,limit=1] run tag @s add brown_wool.thunder_spirit.terrain_2
kill @e[type=text_display,tag=brown_wool.thunder_spirit2.narrative0]
kill @e[type=interaction,tag=brown_wool.thunder_spirit2.narrative00]
playsound brown_wool:custom.miguel_johnson_good_day_to_die record @a[tag=brown_wool.thunder_spirit.player]

tellraw @a[tag=brown_wool.thunder_spirit.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.thunder_spirit",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_spirit.start",color:"red"}]

function brown_wool:entity/boss/thunder_spirit/summon1
execute as @e[type=marker, tag=brown_wool.thunder_spirit.terrain ,limit=1] at @s run function brown_wool:entity/boss/thunder_spirit/terrain0


