execute if items entity @s armor.head * run item replace entity 0-0-0-0-2 container.0 from entity @s armor.head
execute if items entity @s armor.head * run data remove entity 0-0-0-0-2 item.components."minecraft:custom_data"."light_green.clear"
execute if items entity 0-0-0-0-2 container.0 *[custom_data={}] run data remove entity 0-0-0-0-2 item.components."minecraft:custom_data"
execute if items entity @s armor.head * run item replace entity @s armor.head from entity 0-0-0-0-2 container.0
execute if items entity @s armor.head bundle run function light_green:arena/clear_tag/bundle/helmet {bundle:0}
$data remove storage light_green:player player.$(id).arena_storage.head

execute if items entity @s armor.chest * run item replace entity 0-0-0-0-2 container.0 from entity @s armor.chest
execute if items entity @s armor.chest * run data remove entity 0-0-0-0-2 item.components."minecraft:custom_data"."light_green.clear"
execute if items entity 0-0-0-0-2 container.0 *[custom_data={}] run data remove entity 0-0-0-0-2 item.components."minecraft:custom_data"
execute if items entity @s armor.chest * run item replace entity @s armor.chest from entity 0-0-0-0-2 container.0
execute if items entity @s armor.chest bundle run function light_green:arena/clear_tag/bundle/chest {bundle:0}
$data remove storage light_green:player player.$(id).arena_storage.chest

execute if items entity @s armor.legs * run item replace entity 0-0-0-0-2 container.0 from entity @s armor.legs
execute if items entity @s armor.legs * run data remove entity 0-0-0-0-2 item.components."minecraft:custom_data"."light_green.clear"
execute if items entity 0-0-0-0-2 container.0 *[custom_data={}] run data remove entity 0-0-0-0-2 item.components."minecraft:custom_data"
execute if items entity @s armor.legs * run item replace entity @s armor.legs from entity 0-0-0-0-2 container.0
execute if items entity @s armor.legs bundle run function light_green:arena/clear_tag/bundle/legs {bundle:0}
$data remove storage light_green:player player.$(id).arena_storage.legs

execute if items entity @s armor.feet * run item replace entity 0-0-0-0-2 container.0 from entity @s armor.feet
execute if items entity @s armor.feet * run data remove entity 0-0-0-0-2 item.components."minecraft:custom_data"."light_green.clear"
execute if items entity 0-0-0-0-2 container.0 *[custom_data={}] run data remove entity 0-0-0-0-2 item.components."minecraft:custom_data"
execute if items entity @s armor.feet * run item replace entity @s armor.feet from entity 0-0-0-0-2 container.0
execute if items entity @s armor.feet bundle run function light_green:arena/clear_tag/bundle/boots {bundle:0}
$data remove storage light_green:player player.$(id).arena_storage.feet

execute if items entity @s weapon.offhand * run item replace entity 0-0-0-0-2 container.0 from entity @s weapon.offhand
execute if items entity @s weapon.offhand * run data remove entity 0-0-0-0-2 item.components."minecraft:custom_data"."light_green.clear"
execute if items entity 0-0-0-0-2 container.0 *[custom_data={}] run data remove entity 0-0-0-0-2 item.components."minecraft:custom_data"
execute if items entity @s weapon.offhand * run item replace entity @s weapon.offhand from entity 0-0-0-0-2 container.0
execute if items entity @s weapon.offhand bundle run function light_green:arena/clear_tag/bundle/offhand {bundle:0}
$data remove storage light_green:player player.$(id).arena_storage.offhand