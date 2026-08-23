particle flame ~ ~ ~ 1 1 1 1.0 100 force @a
particle explosion ~ ~ ~ 1 1 1 1.0 1 force @a
playsound entity.firework_rocket.launch block @a ~ ~ ~

execute as @p if entity @s[tag = !red_wool.true_explosion_explain] run function red_wool:enchantment/true_explosion_explain