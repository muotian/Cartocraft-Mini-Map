execute if score @s light_green.effect_storage.resistance matches 0 run return fail
$data modify storage light_green:weapon level set from storage light_green:weapon player.$(id).resistance.level
$data modify storage light_green:weapon time set from storage light_green:weapon player.$(id).resistance.seconds
$data modify storage light_green:weapon show_icon set from storage light_green:weapon player.$(id).resistance.show_icon
$data remove storage light_green:weapon player.$(id).resistance
function light_green:item/piglin_girl/axe/get_resistance/1 with storage light_green:weapon