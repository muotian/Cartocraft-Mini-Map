data modify entity caba-0-0-0-1 item set from storage light_green:golem_item contents
execute unless entity @s[gamemode=creative] run item replace entity @s player.cursor from entity caba-0-0-0-1 container.0
execute if entity @s[gamemode=creative] run summon item ~ ~ ~ {Tags:["light_green.new.golem_reback.item"],Item:{id:"egg"},PickupDelay:0}
execute if entity @s[gamemode=creative] run data modify entity @n[tag=light_green.new.golem_reback.item] Item set from storage light_green:golem_item contents
tag @n[tag=light_green.new.golem_reback.item] remove light_green.new.golem_reback.item
$item modify entity @s container.$(slot) light_green:clear_bundle