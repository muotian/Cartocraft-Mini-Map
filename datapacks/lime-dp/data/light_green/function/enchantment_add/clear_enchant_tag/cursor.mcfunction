item replace entity caba-0-0-0-1 container.0 from entity @s player.cursor
data remove entity caba-0-0-0-1 item.components."minecraft:custom_data"."light_green.enchant"
execute as caba-0-0-0-1 if items entity @s container.0 *[custom_data={}] run data remove entity @s item.components."minecraft:custom_data"
item replace entity @s player.cursor from entity caba-0-0-0-1 container.0