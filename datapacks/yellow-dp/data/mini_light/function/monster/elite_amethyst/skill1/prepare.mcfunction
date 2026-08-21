scoreboard players set @s mini_light.monster_cooldown 300
scoreboard players set @s mini_light.monster_prepare 15


#
#summon minecraft:text_display ~ ~1.8 ~ {text:'[{"text":"-[🗡]-","color":"dark_red"},{"text":"紫晶戰錘","bold":false,"color":"white"}]',billboard:"center",Tags:["skill_display","new"]}
#execute as @e[tag=skill_display,tag=new] run scoreboard players set @s monster.skill_display 22
#tag @e[tag=skill_display] remove new 

playsound minecraft:block.respawn_anchor.charge master @a[distance=..8] ~ ~ ~ 10 1
particle minecraft:smoke ~ ~ ~ .5 1 .5 0 500

#
effect give @s resistance 3 5 true
data modify entity @s Motion[1] set value 1.5


