function ordered_splinter:box/open_box/demon_box_loot
kill @s
execute as @n[tag=aj.demon_box.root] run function animated_java:demon_box/animations/open_demon_box/play
execute as @n[tag=aj.demon_box.root] on passengers run data modify entity @s Glowing set value 0b
tag @n[tag=aj.demon_box.root] add wool_purple.animation
tp @n[tag=wool_purple.demon_box_shulker] ~ -300 ~
execute positioned ~ -300 ~ run kill @n[tag=wool_purple.demon_box_shulker]
playsound minecraft:block.grindstone.use block @a ~ ~ ~ 2 0.1
playsound minecraft:item.lodestone_compass.lock block @a ~ ~ ~ 2 1.8
particle dust{color:[0.839,0.271,0.271],scale:1} ~ ~1 ~ 0.2 0.2 0.2 0 20 normal