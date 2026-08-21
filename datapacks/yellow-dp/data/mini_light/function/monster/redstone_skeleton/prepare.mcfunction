scoreboard players set @s mini_light.monster_prepare 25
particle dust_color_transition{from_color:[1.0,0.35,0.12],to_color:[1.0,0.0,0.0],scale:1.0} ^ ^1 ^ 0.2 0.2 0.2 2 20
particle angry_villager ~ ~ ~ 0.2 0.2 0.2 2 5
playsound minecraft:block.respawn_anchor.charge master @a[distance=..8] ~ ~ ~ 10 1

scoreboard players set @s mini_light.monster_cooldown 220

# by tag

#summon minecraft:text_display ~ ~1.8 ~ {text:'[{"text":"-[🗡]-","color":"dark_red"},{"text":"雷射","bold":false,"color":"white"}]',billboard:"center",Tags:["skill_display","new"]}
#execute as @e[tag=skill_display,tag=new] run scoreboard players set @s monster.skill_display 22
#tag @e[tag=skill_display] remove new 