execute as @e[distance=..7, type = !#no_hp, type = !player] run damage @s 24 red_wool:true_explosion by @p
execute as @e[distance=..7, type = !#no_hp, type = !player] at @s run function red_wool:enchantment/dealt_true_explosion_particle
playsound entity.generic.explode block @a ~ ~ ~ 1.0 1.0 1.0
particle explosion ~ ~ ~ 1 1 1 1.0 10 force @a
