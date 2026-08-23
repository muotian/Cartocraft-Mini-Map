# 執行者：技能2
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.cangting_zhenyue_spear2 1


execute if block ^ ^ ^1.2 air run tp @s ^ ^ ^1.2


# 效果
execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.cast2.1] unless block ^ ^ ^1.2 air if entity @s[tag=!brown_wool.cangting_zhenyue_spear.cast2.01] run particle crit ~ ~0.5 ~ 1.8 1 1.8 0.1 200
execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.cast2.1] unless block ^ ^ ^1.2 air if entity @s[tag=!brown_wool.cangting_zhenyue_spear.cast2.01] positioned ~ ~0.5 ~ as @e[type=!player,type=!item,type=!painting,type=!item_frame,tag=!brown_wool.cangting_zhenyue_spear.horse0,distance=..5.2] run damage @s 10 lightning_bolt
execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.cast2.2] unless block ^ ^ ^1.2 air if entity @s[tag=!brown_wool.cangting_zhenyue_spear.cast2.02] run particle crit ~ ~0.5 ~ 1.8 1 1.8 0.1 200
execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.cast2.2] unless block ^ ^ ^1.2 air if entity @s[tag=!brown_wool.cangting_zhenyue_spear.cast2.02] positioned ~ ~0.5 ~ as @e[type=!player,type=!item,type=!painting,type=!item_frame,tag=!brown_wool.cangting_zhenyue_spear.horse0,distance=..5.2] run damage @s 14 lightning_bolt

execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.cast2.1] unless block ^ ^ ^1.2 air run tag @s add brown_wool.cangting_zhenyue_spear.cast2.01
execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.cast2.2] unless block ^ ^ ^1.2 air run tag @s add brown_wool.cangting_zhenyue_spear.cast2.02

execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.cast2.01] rotated ~ 0 run function brown_wool:item/weapon/cangting_zhenyue_spear/cast2_particle1
execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.cast2.01] positioned ~ ~0.5 ~ as @e[type=!player,type=!item,type=!painting,type=!item_frame,tag=!brown_wool.cangting_zhenyue_spear.horse0,distance=..5.2] run effect give @s slowness 1 2 true


execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.cast2.02] rotated ~ 0 run function brown_wool:item/weapon/cangting_zhenyue_spear/cast2_particle1
execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.cast2.02] positioned ~ ~0.5 ~ as @e[type=!player,type=!item,type=!painting,type=!item_frame,tag=!brown_wool.cangting_zhenyue_spear.horse0,distance=..5.2] run effect give @s slowness 1 3 true


# 重置記分板
execute if score @s brown_wool.cangting_zhenyue_spear2 matches 120.. run kill @s


