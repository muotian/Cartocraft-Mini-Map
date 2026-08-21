$item replace entity 0-0-0-0-2 container.0 from entity @s container.$(slot)
$execute if items entity @s container.$(slot) * run data modify storage light_green:player player.$(id).arena_storage.container.$(slot) set from entity 0-0-0-0-2 item
$execute unless items entity @s container.$(slot) * run data modify storage light_green:player player.$(id).arena_storage.container.$(slot) set value {id:air}
$item modify entity @s container.$(slot) light_green:add_clear
$execute if items entity @s container.$(slot) * run item replace entity 0-0-0-0-2 container.0 from entity @s container.$(slot)
$execute if items entity @s container.$(slot) * run execute store result entity 0-0-0-0-2 item.components."minecraft:custom_data"."light_green.clear" int 1 run scoreboard players operation $clear_id light_green.main.math = @s light_green.player_id
$execute if items entity @s container.$(slot) * run item replace entity @s container.$(slot) from entity 0-0-0-0-2 container.0
$execute if items entity @s container.$(slot) bundle run function light_green:arena/storage/bundle/0 {slot:$(slot),bundle:0}