# 執行者、執行位置是要閃避的怪物

scoreboard players reset $random mini_light.monster_duration
execute store result score $random mini_light.monster_duration run random value 1..2

execute if score $random mini_light.monster_duration matches 1 run tag @s add mini_light.left_dodge
execute if score $random mini_light.monster_duration matches 2 run tag @s add mini_light.right_dodge
scoreboard players set @s mini_light.monster_duration 20

scoreboard players set @s mini_light.monster_cooldown 200

# by tag
#提示文字
#summon minecraft:text_display ~ ~1.8 ~ {text:'[{"text":"-[🗡]-","color":"dark_red"},{"text":"繞背","bold":false,"color":"white"}]',billboard:"center",Tags:["skill_display","new"]}
#execute as @e[tag=skill_display,tag=new] run scoreboard players set @s monster.skill_display 22
#tag @e[tag=skill_display] remove new 

 

