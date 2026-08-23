fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace spawner destroy
execute as @e[type = !#no_hp, distance=..5, type = !player] run damage @s 24 red_wool:true_explosion by @p from @p
execute as @e[distance=..12, type = !#no_hp, type = !player] at @s run function red_wool:enchantment/dealt_true_explosion_particle
