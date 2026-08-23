# 幻影雷刃:技能冷卻
execute if score @s brown_wool.phantom_lightning_blade.cd matches 1.. run scoreboard players remove @s brown_wool.phantom_lightning_blade.cd 1
execute if score @s brown_wool.phantom_lightning_blade.cd2 matches 1.. run scoreboard players remove @s brown_wool.phantom_lightning_blade.cd2 1
execute if score @s brown_wool.phantom_lightning_blade.cd matches 1 run tellraw @s [{translate:"item.brown_wool.phantom_lightning_blade",color:aqua},{translate:"item.brown_wool.cooldown_time2",color:yellow}]
execute if score @s brown_wool.phantom_lightning_blade.cd matches 1 at @s run playsound block.amethyst_cluster.fall master @s
execute if score @s brown_wool.phantom_lightning_blade.cd matches 1 run scoreboard players reset @s brown_wool.phantom_lightning_blade.cd2


