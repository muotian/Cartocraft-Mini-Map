$data modify entity caba-0-0-0-1 item set from storage light_green:weapon player.$(id).dagger
$data remove storage light_green:weapon player.$(id).dagger
item replace entity @s weapon.mainhand from entity caba-0-0-0-1 container.0
tag @s remove light_green.use_dagger