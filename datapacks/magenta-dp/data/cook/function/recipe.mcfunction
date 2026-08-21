#
execute at @s unless block ~ ~-1 ~ campfire run title @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{spatula:1b}}}}] actionbar {"translate": "magenta.message.cooking_fire","color":"red"}
execute at @s unless block ~ ~-1 ~ campfire run scoreboard players set @s MagentaCooking 0
execute at @s unless block ~ ~-1 ~ campfire run return 0

scoreboard players reset @s MagentaFinish

execute if data block ~ ~ ~ {Items:[{}]} unless data block ~ ~ ~ {Items:[{},{}]} run function cook:cooking/recipes/items1/all
execute if data block ~ ~ ~ {Items:[{},{}]} unless data block ~ ~ ~ {Items:[{},{},{}]} run function cook:cooking/recipes/items2/all
execute if data block ~ ~ ~ {Items:[{},{},{}]} unless data block ~ ~ ~ {Items:[{},{},{},{}]} run function cook:cooking/recipes/items3/all
execute if data block ~ ~ ~ {Items:[{},{},{},{}]} unless data block ~ ~ ~ {Items:[{},{},{},{},{}]} run function cook:cooking/recipes/items4/all
execute if data block ~ ~ ~ {Items:[{},{},{},{},{}]} run function cook:cooking/recipes/items5/all

execute unless score @s MagentaFinish matches 1.. run scoreboard players reset @s MagentaCooking

# function cook:cooking/recipes/cooktime
