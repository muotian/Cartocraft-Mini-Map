execute as @n[tag=aj.boss_box.root] run function animated_java:boss_box/animations/open_box/play
execute as @n[tag=aj.boss_box.root] on passengers run data modify entity @s Glowing set value 0b
tag @n[tag=aj.boss_box.root] add wool_purple.animation
tp @n[tag=wool_purple.boss_box_shulker] ~ -300 ~
execute positioned ~ -300 ~ run kill @n[tag=wool_purple.boss_box_shulker]
loot spawn ~ ~0.5 ~ loot ordered_splinter:boss_box
playsound minecraft:block.grindstone.use block @a ~ ~ ~ 2 0.1
playsound minecraft:item.lodestone_compass.lock block @a ~ ~ ~ 2 1.8
particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.02 10
particle flash{color:[1.000,0.953,0.510,1.00]} ~ ~ ~ 0 0 0 0 0 normal
kill @s
