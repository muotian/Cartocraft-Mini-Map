$item replace entity 0-0-0-0-2 container.0 from entity @s container.$(slot)
$execute if items entity @s container.$(slot) * run data remove entity 0-0-0-0-2 item.components."minecraft:custom_data"."light_green.clear"
execute if items entity 0-0-0-0-2 container.0 *[custom_data={}] run data remove entity 0-0-0-0-2 item.components."minecraft:custom_data"
$item replace entity @s container.$(slot) from entity 0-0-0-0-2 container.0
$execute if items entity @s container.$(slot) bundle run function light_green:arena/clear_tag/bundle/0 {slot:$(slot),bundle:0}
$data remove storage light_green:player player.$(id).arena_storage.container.$(slot)