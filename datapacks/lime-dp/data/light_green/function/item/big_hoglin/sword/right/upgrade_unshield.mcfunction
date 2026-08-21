execute unless score @s light_green.hoglin.shield.upgrade matches 0.. run scoreboard players set @s light_green.hoglin.shield.upgrade 0
execute if score @s light_green.hoglin.shield.max >= @s light_green.hoglin.shield.upgrade run scoreboard players operation @s light_green.hoglin.shield.upgrade = @s light_green.hoglin.shield.max
scoreboard players reset @s light_green.hoglin.shield
scoreboard players reset @s light_green.hoglin.shield.max
tag @s remove light_green.take_shield
attribute @s max_absorption modifier remove light_green:hoglin_sword
attribute @s knockback_resistance modifier remove light_green:hoglin_sword
execute if score @s light_green.hoglin.shield.upgrade matches 1.. run function light_green:item/big_hoglin/sword/upgrade/apply