#by JaCkY99
#black

scoreboard players reset @s black.dark_angel_reload

execute store result score #black.temp black.temp run data get entity @s equipment.offhand.components."minecraft:custom_data".black.dark_angel_ammo
scoreboard players remove #black.temp black.temp 18
scoreboard players operation #black.temp black.temp *= #black.-1 black.temp

execute store result score @s black.temp run clear @s gunpowder 0

execute if score @s black.temp > #black.temp black.temp run scoreboard players operation @s black.temp = #black.temp black.temp
execute store result storage black temp.dark_angel.clear int 1 run scoreboard players get @s black.temp
function black:item/dark_angel/reload_clear with storage black temp.dark_angel

execute store result score #black.temp black.temp run data get entity @s equipment.offhand.components."minecraft:custom_data".black.dark_angel_ammo
scoreboard players operation #black.temp black.temp += @s black.temp
summon item_display ~ -100 ~ {Tags:["black.summon"]}
item replace entity @e[type=item_display,sort=nearest,limit=1,tag=black.summon] container.0 from entity @s weapon.offhand
execute store result entity @e[type=item_display,sort=nearest,limit=1,tag=black.summon] item.components."minecraft:custom_data".black.dark_angel_ammo int 1 run scoreboard players get #black.temp black.temp
item replace entity @s weapon.offhand from entity @e[type=item_display,sort=nearest,limit=1,tag=black.summon] container.0
kill @e[tag=black.summon]