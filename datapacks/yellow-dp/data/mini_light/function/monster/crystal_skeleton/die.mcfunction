summon skeleton ~ ~ ~ {CustomName:[{"translate":"entity.mini_light.crystal_skeleton_ghost"}],Health:1,Silent:1b,Tags:["mini_light.crystal_skeleton_ghost","new"], equipment:{head:{id:player_head,count:1}},attributes:[{id:"max_health",base:1f}],DeathLootTable:""}

item replace entity @e[tag=mini_light.crystal_skeleton_ghost,tag=new] armor.head with player_head[profile={id:[I;-127686025,-781694766,-1726534852,583712033],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2JiZmI3YzMzNTZkMjFjNjU0MGI2OTMwNjk0MjA5YjYwN2E2NTczYjJmMGQxOGYyMTJkZGVlOGFkM2QyNWEwOCJ9fX0="}]}]
effect give @e[tag=mini_light.crystal_skeleton_ghost,tag=new] resistance 2 5 true
effect give @e[tag=mini_light.crystal_skeleton_ghost,tag=new] speed 2 5 true

tag @e[tag=mini_light.crystal_skeleton_ghost,tag=new] remove new
kill @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{crystal_skeleton_die:1b}}}}]
playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 1 0.7
playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 1 1

#
#summon minecraft:text_display ~ ~1.8 ~ {text:'[{"text":"-[🗡]-","color":"dark_red"},{"text":"崛起魂","bold":false,"color":"white"}]',billboard:"center",Tags:["skill_display","new"]}
#execute as @e[tag=skill_display,tag=new] run scoreboard players set @s monster.skill_display 22
#tag @e[tag=skill_display] remove new 
