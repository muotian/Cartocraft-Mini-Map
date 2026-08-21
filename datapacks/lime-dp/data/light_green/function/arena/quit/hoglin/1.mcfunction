$item replace entity caba-0-0-0-1 container.0 from entity @s container.$(slot)
data remove entity caba-0-0-0-1 item.components."minecraft:custom_data"
$item replace entity @s container.$(slot) from entity caba-0-0-0-1 container.0