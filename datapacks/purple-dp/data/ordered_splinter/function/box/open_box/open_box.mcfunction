function ordered_splinter:box/open_box/box_loot
kill @s
execute as @n[tag=aj.box.root] run function animated_java:box/animations/open_box/play
execute as @n[tag=aj.box.root] on passengers run data modify entity @s Glowing set value 0b
tag @n[tag=aj.box.root] add wool_purple.animation
tp @n[tag=wool_purple.box_shulker] ~ -300 ~
execute positioned ~ -300 ~ run kill @n[tag=wool_purple.box_shulker]
playsound minecraft:block.grindstone.use block @a ~ ~ ~ 2 0.1
playsound minecraft:item.lodestone_compass.lock block @a ~ ~ ~ 2 1.8
particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.02 10