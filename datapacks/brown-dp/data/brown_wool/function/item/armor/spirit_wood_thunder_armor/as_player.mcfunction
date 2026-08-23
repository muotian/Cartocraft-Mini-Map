execute if items entity @s armor.chest diamond_chestplate[custom_data={brown_wool.spirit_wood_thunder_armor:1}] run tag @s add brown_wool.spirit_wood_thunder_armor1
execute if items entity @s armor.head diamond_helmet[custom_data={brown_wool.spirit_wood_thunder_armor:1}] run tag @s add brown_wool.spirit_wood_thunder_armor1
execute if items entity @s armor.feet diamond_boots[custom_data={brown_wool.spirit_wood_thunder_armor:1}] run tag @s add brown_wool.spirit_wood_thunder_armor1
execute if items entity @s armor.legs diamond_leggings[custom_data={brown_wool.spirit_wood_thunder_armor:1}] run tag @s add brown_wool.spirit_wood_thunder_armor1
execute if items entity @s armor.chest diamond_chestplate[custom_data={brown_wool.spirit_wood_thunder_armor:1}] if items entity @s armor.head diamond_helmet[custom_data={brown_wool.spirit_wood_thunder_armor:1}] if items entity @s armor.feet diamond_boots[custom_data={brown_wool.spirit_wood_thunder_armor:1}] if items entity @s armor.legs diamond_leggings[custom_data={brown_wool.spirit_wood_thunder_armor:1}] run tag @s add brown_wool.spirit_wood_thunder_armor2


execute unless items entity @s armor.chest diamond_chestplate[custom_data={brown_wool.spirit_wood_thunder_armor:1}] unless items entity @s armor.head diamond_helmet[custom_data={brown_wool.spirit_wood_thunder_armor:1}] unless items entity @s armor.feet diamond_boots[custom_data={brown_wool.spirit_wood_thunder_armor:1}] unless items entity @s armor.legs diamond_leggings[custom_data={brown_wool.spirit_wood_thunder_armor:1}] run tag @s remove brown_wool.spirit_wood_thunder_armor1

execute unless items entity @s armor.chest diamond_chestplate[custom_data={brown_wool.spirit_wood_thunder_armor:1}] run tag @s remove brown_wool.spirit_wood_thunder_armor2
execute unless items entity @s armor.head diamond_helmet[custom_data={brown_wool.spirit_wood_thunder_armor:1}] run tag @s remove brown_wool.spirit_wood_thunder_armor2
execute unless items entity @s armor.feet diamond_boots[custom_data={brown_wool.spirit_wood_thunder_armor:1}] run tag @s remove brown_wool.spirit_wood_thunder_armor2
execute unless items entity @s armor.legs diamond_leggings[custom_data={brown_wool.spirit_wood_thunder_armor:1}] run tag @s remove brown_wool.spirit_wood_thunder_armor2

execute if score @s brown_wool.spirit_wood_thunder_armor.single_cd matches 1.. run scoreboard players remove @s brown_wool.spirit_wood_thunder_armor.single_cd 1

