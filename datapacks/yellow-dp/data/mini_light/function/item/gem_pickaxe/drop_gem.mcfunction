execute unless predicate {condition:"random_chance", chance:0.2} run return fail

execute store result score $random mini_light.main run random value 1..7
execute if score $random mini_light.main matches 1 run loot spawn ~ ~ ~ loot mini_light:gem/coal_gem
execute if score $random mini_light.main matches 2 run loot spawn ~ ~ ~ loot mini_light:gem/blaze_gem
execute if score $random mini_light.main matches 3 run loot spawn ~ ~ ~ loot mini_light:gem/emerald_gem
execute if score $random mini_light.main matches 4 run loot spawn ~ ~ ~ loot mini_light:gem/redstone_gem
execute if score $random mini_light.main matches 5 run loot spawn ~ ~ ~ loot mini_light:gem/amethyst_gem
execute if score $random mini_light.main matches 6 run loot spawn ~ ~ ~ loot mini_light:gem/gunpowder_gem
execute if score $random mini_light.main matches 7 run loot spawn ~ ~ ~ loot mini_light:gem/soul_gem

execute as @n[type=item,distance=..1] run data modify entity @s CustomNameVisible set value 1b
execute as @n[type=item,distance=..1] run data modify entity @s CustomName set from entity @s Item.components."minecraft:custom_name"