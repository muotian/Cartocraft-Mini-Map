#
scoreboard players set $cd2 pink.monster.glass.skill 9999

#
item replace entity @n[tag=pink.glass] armor.chest with leather_chestplate[trim={pattern:dune,material:amethyst},dyed_color=15789822,enchantments={thorns:3}]
effect give @s resistance infinite 1 true
effect give @s instant_damage

particle heart ~ ~ ~ .2 .2 .2 0 10
particle end_rod ~ ~1.5 ~ .2 .5 .2 0.1 40
playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 1
playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 1
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 2

#
tag @n[tag=pink.glass] add pink.glass.armor
