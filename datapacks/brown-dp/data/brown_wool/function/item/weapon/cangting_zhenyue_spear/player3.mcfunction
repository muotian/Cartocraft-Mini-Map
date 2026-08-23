# 蒼霆鎮岳槍:技能冷卻
execute if score @s brown_wool.cangting_zhenyue_spear.cd matches 1.. run scoreboard players remove @s brown_wool.cangting_zhenyue_spear.cd 1
execute if score @s brown_wool.cangting_zhenyue_spear.cd2 matches 1.. run scoreboard players remove @s brown_wool.cangting_zhenyue_spear.cd2 1
execute if score @s brown_wool.cangting_zhenyue_spear.cd matches 1 run tellraw @s [{translate:"item.brown_wool.cangting_zhenyue_spear",color:aqua},{translate:"item.brown_wool.cooldown_time2",color:yellow}]
execute if score @s brown_wool.cangting_zhenyue_spear.cd matches 1 run playsound block.amethyst_cluster.fall master @s
execute if score @s brown_wool.cangting_zhenyue_spear.cd matches 1 run scoreboard players reset @s brown_wool.cangting_zhenyue_spear.cd2

