
scoreboard players add @s brown_wool.cangting_zhenyue_spear2 1


execute rotated ~ 0 run function brown_wool:item/weapon/cangting_zhenyue_spear/horse_particle

execute rotated ~ 0 if block ^ ^ ^1 air run tp @s ^ ^ ^1

execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.horse1] rotated ~ 0 positioned ^ ^0.5 ^ as @e[distance=..2.8 ,type=!player,type=!item,type=!painting,type=!item_frame,tag=!brown_wool.cangting_zhenyue_spear.horse0] run damage @s 10 lightning_bolt
execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.horse2] rotated ~ 0 positioned ^ ^0.5 ^ as @e[distance=..2.8 ,type=!player,type=!item,type=!painting,type=!item_frame,tag=!brown_wool.cangting_zhenyue_spear.horse0] run damage @s 14 lightning_bolt

execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.horse1] rotated ~ 0 as @e[distance=..5.2 ,type=!player] run effect give @s slowness 1 2 false
execute if entity @s[tag=brown_wool.cangting_zhenyue_spear.horse2] rotated ~ 0 as @e[distance=..5.2 ,type=!player] run effect give @s slowness 2 3 false

execute if score @s brown_wool.cangting_zhenyue_spear2 matches 41.. run tp @s ~ ~-200 ~
execute if score @s brown_wool.cangting_zhenyue_spear2 matches 41.. run kill @s
