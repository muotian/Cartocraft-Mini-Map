# 疾風刃・改:技能冷卻
execute if score @s brown_wool.gale_blade_alter.cd matches 1.. run scoreboard players remove @s brown_wool.gale_blade_alter.cd 1
execute if score @s brown_wool.gale_blade_alter.cd2 matches 1.. run scoreboard players remove @s brown_wool.gale_blade_alter.cd2 1
execute if score @s brown_wool.gale_blade_alter.cd matches 1 run tellraw @s [{translate:"item.brown_wool.gale_blade_alter",color:aqua},{translate:"item.brown_wool.cooldown_time2",color:yellow}]
execute if score @s brown_wool.gale_blade_alter.cd matches 1 at @s run playsound block.amethyst_cluster.fall master @s
execute if score @s brown_wool.gale_blade_alter.cd matches 1 run scoreboard players reset @s brown_wool.gale_blade_alter.cd2


