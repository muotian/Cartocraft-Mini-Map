item replace entity 0-0-0-0-2 container.0 from entity @s armor.head
$execute if items entity @s armor.head * run data modify storage light_green:player player.$(id).arena_storage.head set from entity 0-0-0-0-2 item
$execute unless items entity @s armor.head * run data modify storage light_green:player player.$(id).arena_storage.head set value {id:air}
item modify entity @s armor.head light_green:add_clear
execute if items entity @s armor.head * run item replace entity 0-0-0-0-2 container.0 from entity @s armor.head
execute if items entity @s armor.head * run execute store result entity 0-0-0-0-2 item.components."minecraft:custom_data"."light_green.clear" int 1 run scoreboard players operation $clear_id light_green.main.math = @s light_green.player_id
execute if items entity @s armor.head * run item replace entity @s armor.head from entity 0-0-0-0-2 container.0
execute if items entity @s armor.head bundle run function light_green:arena/storage/bundle/helmet {bundle:0}

item replace entity 0-0-0-0-2 container.0 from entity @s armor.chest
$execute if items entity @s armor.chest * run data modify storage light_green:player player.$(id).arena_storage.chest set from entity 0-0-0-0-2 item
$execute unless items entity @s armor.chest * run data modify storage light_green:player player.$(id).arena_storage.chest set value {id:air}
item modify entity @s armor.chest light_green:add_clear
execute if items entity @s armor.chest * run item replace entity 0-0-0-0-2 container.0 from entity @s armor.chest
execute if items entity @s armor.chest * run execute store result entity 0-0-0-0-2 item.components."minecraft:custom_data"."light_green.clear" int 1 run scoreboard players operation $clear_id light_green.main.math = @s light_green.player_id
execute if items entity @s armor.chest * run item replace entity @s armor.chest from entity 0-0-0-0-2 container.0
execute if items entity @s armor.chest bundle run function light_green:arena/storage/bundle/chest {bundle:0}

item replace entity 0-0-0-0-2 container.0 from entity @s armor.legs
$execute if items entity @s armor.legs * run data modify storage light_green:player player.$(id).arena_storage.legs set from entity 0-0-0-0-2 item
$execute unless items entity @s armor.legs * run data modify storage light_green:player player.$(id).arena_storage.legs set value {id:air}
item modify entity @s armor.legs light_green:add_clear
execute if items entity @s armor.legs * run item replace entity 0-0-0-0-2 container.0 from entity @s armor.legs
execute if items entity @s armor.legs * run execute store result entity 0-0-0-0-2 item.components."minecraft:custom_data"."light_green.clear" int 1 run scoreboard players operation $clear_id light_green.main.math = @s light_green.player_id
execute if items entity @s armor.legs * run item replace entity @s armor.legs from entity 0-0-0-0-2 container.0
execute if items entity @s armor.legs bundle run function light_green:arena/storage/bundle/legs {bundle:0}

item replace entity 0-0-0-0-2 container.0 from entity @s armor.feet
$execute if items entity @s armor.feet * run data modify storage light_green:player player.$(id).arena_storage.feet set from entity 0-0-0-0-2 item
$execute unless items entity @s armor.feet * run data modify storage light_green:player player.$(id).arena_storage.feet set value {id:air}
item modify entity @s armor.feet light_green:add_clear
execute if items entity @s armor.feet * run item replace entity 0-0-0-0-2 container.0 from entity @s armor.feet
execute if items entity @s armor.feet * run execute store result entity 0-0-0-0-2 item.components."minecraft:custom_data"."light_green.clear" int 1 run scoreboard players operation $clear_id light_green.main.math = @s light_green.player_id
execute if items entity @s armor.feet * run item replace entity @s armor.feet from entity 0-0-0-0-2 container.0
execute if items entity @s armor.feet bundle run function light_green:arena/storage/bundle/boots {bundle:0}

item replace entity 0-0-0-0-2 container.0 from entity @s weapon.offhand
$execute if items entity @s weapon.offhand * run data modify storage light_green:player player.$(id).arena_storage.offhand set from entity 0-0-0-0-2 item
$execute unless items entity @s weapon.offhand * run data modify storage light_green:player player.$(id).arena_storage.offhand set value {id:air}
item modify entity @s weapon.offhand light_green:add_clear
execute if items entity @s weapon.offhand * run item replace entity 0-0-0-0-2 container.0 from entity @s weapon.offhand
execute if items entity @s weapon.offhand * run execute store result entity 0-0-0-0-2 item.components."minecraft:custom_data"."light_green.clear" int 1 run scoreboard players operation $clear_id light_green.main.math = @s light_green.player_id
execute if items entity @s weapon.offhand * run item replace entity @s weapon.offhand from entity 0-0-0-0-2 container.0
execute if items entity @s weapon.offhand bundle run function light_green:arena/storage/bundle/offhand {bundle:0}