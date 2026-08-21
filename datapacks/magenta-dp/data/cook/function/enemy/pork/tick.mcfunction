#

execute as @e[tag=MagentaPork,type=hoglin] unless score @s MagentaTimer matches 0.. run scoreboard players set @s MagentaTimer 180
scoreboard players add @e[tag=MagentaPork,type=hoglin] MagentaTimer 1

execute as @e[tag=MagentaPork,type=hoglin,scores={MagentaTimer=280..}] at @s if entity @a[distance=..16] run function cook:enemy/pork/skill

scoreboard players add @e[tag=MagentaPork,type=area_effect_cloud] MagentaTimer 1
execute as @e[tag=MagentaPork,type=area_effect_cloud,scores={MagentaTimer=39..}] at @s run function cook:enemy/pork/trap

scoreboard players add @e[tag=MagentaPork,type=item_display] MagentaTimer 1
execute as @e[tag=MagentaPork,type=item_display,scores={MagentaTimer=400}] run kill @s

execute as @e[tag=MagentaPork,type=item_display] at @s if entity @p[distance=..1] run function cook:enemy/pork/trigger
