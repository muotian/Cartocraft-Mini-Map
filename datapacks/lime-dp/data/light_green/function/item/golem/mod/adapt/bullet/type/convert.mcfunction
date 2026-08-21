execute store result storage light_green:golem_item id int 1 run scoreboard players get @s light_green.player_id

execute if entity @s[tag=light_green.bullet.target] run return run function light_green:item/golem/mod/adapt/bullet/type/target with storage light_green:golem_item
execute if entity @s[tag=light_green.bullet.hoglin_target] run return run function light_green:item/golem/mod/adapt/bullet/type/hoglin_target with storage light_green:golem_item
execute if entity @s[tag=light_green.bullet.heal] run return run function light_green:item/golem/mod/adapt/bullet/type/heal