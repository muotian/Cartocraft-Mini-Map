advancement revoke @s only light_green:adapt
execute if items entity @s hotbar.* *[custom_data~{light_green.hoglin_sword:1b}] run return fail
scoreboard players add @s light_green.adapt.attacker.hit 1
scoreboard players reset @s light_green.adapt.victim.hit
execute if score @s light_green.adapt.attacker.hit matches 2.. store result storage light_green:player id int 1 run scoreboard players get @s light_green.player_id
execute if score @s light_green.adapt.attacker.hit matches 2.. run function light_green:item/golem/mod/adapt/convert_target with storage light_green:player
execute if score @s light_green.adapt.attacker.hit matches 2.. run scoreboard players reset @s light_green.adapt.attacker.hit