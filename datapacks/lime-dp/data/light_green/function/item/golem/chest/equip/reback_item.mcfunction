$scoreboard players set $$(contents_id) light_green.main.math 1
execute unless score $armor_item_level light_green.main.math matches 2.. if score $minecraft:diamond light_green.main.math matches 1 run function light_green:item/golem/chest/equip/to_long
execute unless score $armor_item_level light_green.main.math matches 3.. if score $minecraft:netherite_ingot light_green.main.math matches 1 run function light_green:item/golem/chest/equip/to_gloves
$scoreboard players reset $$(contents_id) light_green.main.math 
data modify entity caba-0-0-0-1 item set from storage light_green:golem_item contents
execute unless entity @s[gamemode=creative] run item replace entity @s player.cursor from entity caba-0-0-0-1 container.0
execute if entity @s[gamemode=creative] run summon item ~ ~ ~ {Tags:["light_green.new.golem_reback.item"],Item:{id:"egg"},PickupDelay:0}
execute if entity @s[gamemode=creative] run data modify entity @n[tag=light_green.new.golem_reback.item] Item set from storage light_green:golem_item contents
tag @n[tag=light_green.new.golem_reback.item] remove light_green.new.golem_reback.item
item modify entity @s armor.chest light_green:clear_bundle