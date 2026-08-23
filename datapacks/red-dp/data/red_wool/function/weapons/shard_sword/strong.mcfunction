advancement revoke @s only red_wool:weapons/use_shard_sword

execute if score @s red_wool.player_use matches 0.. run return fail
scoreboard players set @s red_wool.player_use 2

execute store result score tnt_axe red_wool.tmp run clear @p gunpowder 0
execute if score tnt_axe red_wool.tmp matches 0 run return fail
clear @p gunpowder 1

execute as @e[type = !#no_hp, distance=..12, type = !player] run damage @s 20 red_wool:true_explosion by @p from @p
execute as @e[distance=..12, type = !#no_hp, type = !player] at @s run function red_wool:enchantment/dealt_true_explosion_particle

playsound item.trident.thunder block @s ~ ~ ~ 1.0 1.0 1.0
particle explosion ~ ~ ~ 2 2 2 1.0 10

item modify entity @s weapon.mainhand {function:"set_components", components:{custom_data:{strong_attack:3}, item_model:"red_wool:shard_sword_red"}}
item modify entity @s weapon.mainhand {function:"set_components", components:{"!blocks_attacks":{}}}