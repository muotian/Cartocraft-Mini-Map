execute store result score @s black.element run random value 1..2
execute if score @s black.element matches 1 run function black:area/set_real
execute if score @s black.element matches 2 run function black:area/set_fake
attribute @s minecraft:max_health modifier add black.buff 0.2 add_multiplied_total
data modify entity @s Health set from entity @s attributes[{id:"minecraft:max_health"}]
attribute @s movement_speed modifier add black.buff 0.05 add_multiplied_total
