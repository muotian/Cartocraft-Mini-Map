scoreboard players set $cd2 pink.monster.glass.skill 260

#
tag @s remove pink.glass.armor
item replace entity @s armor.chest with leather_chestplate[trim={pattern:dune,material:iron},dyed_color=15789822,enchantments={thorns:3}]

#
execute as @n[tag=pink_mobs.glass_vex] at @s run function pink:monster/glass/dash
execute positioned ~ ~ ~1 run function pink:monster/glass/bullet
execute positioned ~1 ~ ~ run function pink:monster/glass/bullet
execute positioned ~1 ~ ~1 run function pink:monster/glass/bullet

#
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 0 1

particle end_rod ~ ~1.5 ~ 0 0 0 0.3 15

playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 1
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 2