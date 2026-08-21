data modify storage light_green:golem_item item set from entity @s Inventory[{components:{"minecraft:custom_data":{"light_green:golem_hand_cannon":1}}}]
data modify storage light_green:golem_item contents set from storage light_green:golem_item item.components."minecraft:bundle_contents"[0]
data modify storage light_green:golem_item contents_id set from storage light_green:golem_item item.components."minecraft:bundle_contents"[0].id
data modify storage light_green:golem_item slot set from storage light_green:golem_item item.Slot
execute store result score $golem_item_level light_green.main.math run data get storage light_green:golem_item contents.components."minecraft:custom_data"."light_green:golem_item_level"
execute store success score $golem_item light_green.main.math run data get storage light_green:golem_item item.components."minecraft:bundle_contents"[0]
execute store success score $golem_item_data light_green.main.math run data get storage light_green:golem_item contents.components."minecraft:custom_data"."light_green:golem_hand_cannon_mod"
function light_green:item/golem/hand_cannon/inventory/bundle with storage light_green:golem_item
execute if score $golem_item light_green.main.math matches 1 if score $golem_item_data light_green.main.math matches 0 at @s anchored eyes run function light_green:item/golem/hand_cannon/inventory/reback_item with storage light_green:golem_item
execute if score $golem_item light_green.main.math matches 1 if score $golem_item_data light_green.main.math matches 1 run data modify storage light_green:golem_item mod set from storage light_green:golem_item contents.components."minecraft:custom_data"."light_green:golem_hand_cannon_mod"
execute if score $golem_item light_green.main.math matches 0 run data modify storage light_green:golem_item mod set value ""
function light_green:item/golem/hand_cannon/inventory/mod with storage light_green:golem_item