advancement revoke @s only mini_light:accessories/light_necklace
execute store result score $max_health mini_light.accessories run attribute @s max_health get
execute store result score $current_health mini_light.accessories run data get entity @s Health 100
scoreboard players operation $current_health mini_light.accessories /= $max_health mini_light.accessories
execute if score $current_health mini_light.accessories matches ..49 run return fail

execute on attacker run tag @s add mini_light.attacker
execute at @e[tag=mini_light.attacker] run function mini_light:item/accessory/light_particle
damage @n[tag=mini_light.attacker] 4 mini_light:player_spark by @s
tag @e[tag=mini_light.attacker] remove mini_light.attacker

playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.5 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 0.5 2
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 0.5 1