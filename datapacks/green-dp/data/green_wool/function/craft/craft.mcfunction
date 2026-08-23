#執行者:物品(材料
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{green_wool.steam_robot_hand:1b}}}}] run function green_wool:craft/item/steam_sword
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{green_wool.iron_ingot:1b}},count:6}}] run function green_wool:craft/item/pipe
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{green_wool.component:1b}},count:3}}] run function green_wool:craft/item/boltgun
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{green_wool.copper:1b}},count:2}}] run function green_wool:craft/item/bullet


