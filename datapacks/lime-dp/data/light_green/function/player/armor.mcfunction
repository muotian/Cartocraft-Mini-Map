scoreboard players reset $mod_equip light_green.main.math

execute if items entity @s armor.* *[custom_data~{"light_green:golem_armor":1}] run function light_green:item/golem/chest/equip/tick
execute if items entity @s container.* *[custom_data~{"light_green:golem_armor":1}] run function light_green:item/golem/chest/inventory/tick
execute if items entity @s weapon.offhand *[custom_data~{"light_green:golem_armor":1}] run function light_green:item/golem/chest/offhand/tick

execute if score @s light_green.adapt_bullet.equip matches 1.. run function light_green:item/golem/mod/adapt/kill with storage light_green:player

execute if items entity @s armor.* *[custom_data~{"light_green:golem_helmet":1}] run function light_green:item/golem/helmet/equip/tick
execute if items entity @s container.* *[custom_data~{"light_green:golem_helmet":1}] run function light_green:item/golem/helmet/inventory/tick
execute if items entity @s weapon.offhand *[custom_data~{"light_green:golem_helmet":1}] run function light_green:item/golem/helmet/offhand/tick