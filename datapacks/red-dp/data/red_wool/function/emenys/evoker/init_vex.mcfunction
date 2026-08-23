tag @s add red_wool.vex
tag @s add red_wool.enemy

attribute @s attack_damage base set 20

item replace entity @s weapon.mainhand with tnt[enchantments={"red_wool:dealt_true_explosion":10}]
data modify entity @s life_ticks set value 99999999

execute at @s run particle angry_villager ~ ~ ~ 0 2 0 1 20 force @a