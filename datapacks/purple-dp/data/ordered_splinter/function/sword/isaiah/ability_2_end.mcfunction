kill @s
execute as @e[type=#mobs] at @s if predicate ordered_splinter:is_ride_amethyst run function ordered_splinter:sword/isaiah/ability_2_end_damage
playsound minecraft:entity.warden.dig player @a ~ ~ ~ 0.5 2
playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 2 0.1
playsound minecraft:entity.phantom.bite player @a ~ ~ ~ 0.1 1
playsound minecraft:block.chest.close player @a ~ ~ ~ 0.1 0.1
playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 1.2
execute positioned ~ ~-0.5 ~ run function ordered_splinter:particle/circle
