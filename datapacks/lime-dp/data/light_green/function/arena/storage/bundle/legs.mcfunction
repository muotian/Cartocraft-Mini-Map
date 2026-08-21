item replace entity 0-0-0-0-2 container.0 from entity @s armor.legs
$execute unless data entity 0-0-0-0-2 item.components."minecraft:bundle_contents"[$(bundle)] run return fail
$execute store result storage light_green:arena bundle int 1 run scoreboard players set $bundle light_green.main.math $(bundle)
data modify storage light_green:arena bundle_storage set from entity 0-0-0-0-2 item
$data modify entity 0-0-0-0-2 item set from entity 0-0-0-0-2 item.components."minecraft:bundle_contents"[$(bundle)]
item modify entity 0-0-0-0-2 container.0 light_green:add_clear
execute store result entity 0-0-0-0-2 item.components."minecraft:custom_data"."light_green.clear" int 1 run scoreboard players operation $clear_id light_green.main.math = @s light_green.player_id
$data modify storage light_green:arena bundle_storage.components."minecraft:bundle_contents"[$(bundle)] set from entity 0-0-0-0-2 item
data modify entity 0-0-0-0-2 item set from storage light_green:arena bundle_storage
item replace entity @s armor.legs from entity 0-0-0-0-2 container.0
execute store result storage light_green:arena bundle int 1 run scoreboard players add $bundle light_green.main.math 1
function light_green:arena/storage/bundle/legs with storage light_green:arena