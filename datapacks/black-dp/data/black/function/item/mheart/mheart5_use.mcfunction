#by JaCkY99
#black

tag @s add black.atker

playsound entity.generic.explode player @a ~ ~ ~ 1 0.5
playsound entity.wither.shoot player @a ~ ~ ~ 1 1.5
playsound block.lava.extinguish player @a ~ ~ ~ 1 0.5

particle explosion_emitter ~ ~1 ~ 0 0 0 0 0
particle flame ~ ~1 ~ 0 0 0 0.5 100
particle large_smoke ~ ~1 ~ 0 0 0 0.5 100

effect give @e[type=#black:mob,distance=..7] slowness 30 2 false
effect give @e[type=#black:mob,distance=..7] weakness 30 0 false
execute as @e[type=#black:mob,distance=..7] run damage @s 30 player_attack by @a[limit=1,tag=black.atker]

scoreboard players set @s black.mheart 3

tag @s remove black.atker