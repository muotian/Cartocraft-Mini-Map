summon minecraft:silverfish ~ ~.5 ~ {Motion:[0.2,0.5,0.2],DeathLootTable:""}

playsound minecraft:entity.item_frame.remove_item master @a ~ ~ ~ 1 0
playsound minecraft:block.lodestone.place master @a ~ ~ ~ 1 1
playsound minecraft:block.sculk_sensor.clicking master @a ~ ~ ~ 1 1

tag @s remove mini_light.worm1

#summon minecraft:text_display ~ ~1.8 ~ {text:'[{"text":"-[🗡]-","color":"dark_red"},{"text":"蛀蟲","bold":false,"color":"white"}]',billboard:"center",Tags:["skill_display","new"]}
#execute as @e[tag=skill_display,tag=new] run scoreboard players set @s monster.skill_display 22
#tag @e[tag=skill_display] remove new 


