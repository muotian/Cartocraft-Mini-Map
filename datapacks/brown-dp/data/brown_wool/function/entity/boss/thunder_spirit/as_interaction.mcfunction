
execute on target if entity @s[gamemode=survival] run function brown_wool:entity/boss/thunder_spirit/start
execute on target if entity @s[gamemode=!survival] run tellraw @s {translate:"entity.brown_wool.gamemode",color:"red"}
execute as @e[type=interaction, tag=brown_wool.thunder_spirit.interaction1 ,limit=1] if data entity @s interaction run data remove entity @s interaction

