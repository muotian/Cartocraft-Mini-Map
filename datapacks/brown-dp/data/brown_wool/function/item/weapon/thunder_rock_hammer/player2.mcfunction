# 雷岩重錘:技能冷卻
execute if score @s brown_wool.thunder_rock_hammer.cd matches 1.. run scoreboard players remove @s brown_wool.thunder_rock_hammer.cd 1
execute if score @s brown_wool.thunder_rock_hammer.cd2 matches 1.. run scoreboard players remove @s brown_wool.thunder_rock_hammer.cd2 1
execute if score @s brown_wool.thunder_rock_hammer.cd matches 1 run tellraw @s [{translate:"item.brown_wool.thunder_rock_hammer",color:aqua},{translate:"item.brown_wool.cooldown_time2",color:yellow}]
execute if score @s brown_wool.thunder_rock_hammer.cd matches 1 at @s run playsound block.amethyst_cluster.fall master @s
execute if score @s brown_wool.thunder_rock_hammer.cd matches 1 run scoreboard players reset @s brown_wool.thunder_rock_hammer.cd2


