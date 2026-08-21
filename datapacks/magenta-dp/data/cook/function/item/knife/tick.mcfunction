#

# execute as @e[tag=MagentaKnifeSkill,type=area_effect_cloud] at @s unless block ~ ~ ~ air run tp @s ~ ~0.5 ~
# execute as @e[tag=MagentaKnifeSkill,type=area_effect_cloud] at @s run function cook:item/knife/damage with entity @s data.Dmg

execute as @e[tag=MagentaKnifeSkill,type=marker] unless score @s MagentaTimer matches -1.. run scoreboard players set @s MagentaTimer 40
scoreboard players remove @e[tag=MagentaKnifeSkill,type=marker] MagentaTimer 1
kill @e[tag=MagentaKnifeSkill,scores={MagentaTimer=0},type=marker]

execute as @e[tag=MagentaKnifeSkill,type=marker] at @s unless block ~ ~ ~ air run tp @s ~ ~0.5 ~
execute as @e[tag=MagentaKnifeSkill,type=marker] at @s run function cook:item/knife/damage with entity @s data.Dmg

scoreboard players remove @a[scores={MagentaKnifeCD=1..}] MagentaKnifeCD 1
title @a[scores={MagentaKnifeCD=1}] actionbar [{translate:"magenta.item.cook_knife.name",color:green},{translate:"magenta.item.cook_knife.cooldown",color:green}]
execute as @a[scores={MagentaKnifeCD=1}] at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.5 2

