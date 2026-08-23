# 執行者：右鍵的玩家
# 執行位置：同上

advancement revoke @s only brown_wool:brown_wool.thunder_rock_hammer_alter

execute unless score @s brown_wool.thunder_rock_hammer_alter.cd2 matches 1.. if score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. run tellraw @s [{translate:"item.brown_wool.thunder_rock_hammer_alter",color:aqua},{translate:"item.brown_wool.cooldown_time1",color:red}]
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd2 matches 1.. if score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. run scoreboard players set @s brown_wool.thunder_rock_hammer_alter.cd2 20

execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run tag @s add brown_wool.thunder_rock_hammer_alter01
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] rotated ~ 0 run summon minecraft:item_display ^ ^ ^ {Tags:["brown_wool.thunder_rock_hammer_alter1","brown_wool.thunder_rock_hammer_alter0"]}
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] at @s as @n[type=item_display,tag=brown_wool.thunder_rock_hammer_alter1] at @p[tag=brown_wool.thunder_rock_hammer_alter01] rotated ~ 0 run tp @s ^ ^0.1 ^1 ~ ~
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run tag @s remove brown_wool.thunder_rock_hammer_alter01
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run scoreboard players set @s brown_wool.thunder_rock_hammer_alter.cd2 20
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run scoreboard players set @s brown_wool.thunder_rock_hammer_alter.cd 280

execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 5.. run tag @s add brown_wool.thunder_rock_hammer_alter02
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 5.. rotated ~ 0 run summon minecraft:item_display ^ ^ ^ {Tags:["brown_wool.thunder_rock_hammer_alter2","brown_wool.thunder_rock_hammer_alter0"]}
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 5.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 5
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 5.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 5.. at @s as @n[type=item_display,tag=brown_wool.thunder_rock_hammer_alter2] at @p[tag=brown_wool.thunder_rock_hammer_alter02] rotated ~ 0 run tp @s ^ ^0.1 ^1 ~ ~
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 5.. run tag @s remove brown_wool.thunder_rock_hammer_alter02
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 5.. run scoreboard players set @s brown_wool.thunder_rock_hammer_alter.cd2 20
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 5.. run scoreboard players set @s brown_wool.thunder_rock_hammer_alter.cd 360

execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 5.. run tag @s add brown_wool.thunder_rock_hammer_alter01
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 5.. rotated ~ 0 run summon minecraft:item_display ^ ^ ^ {Tags:["brown_wool.thunder_rock_hammer_alter1","brown_wool.thunder_rock_hammer_alter0"]}
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 5.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 5.. at @s as @n[type=item_display,tag=brown_wool.thunder_rock_hammer_alter1] at @p[tag=brown_wool.thunder_rock_hammer_alter01] rotated ~ 0 run tp @s ^ ^0.1 ^1 ~ ~
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 5.. run tag @s remove brown_wool.thunder_rock_hammer_alter01
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 5.. run scoreboard players set @s brown_wool.thunder_rock_hammer_alter.cd2 20
execute unless score @s brown_wool.thunder_rock_hammer_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 5.. run scoreboard players set @s brown_wool.thunder_rock_hammer_alter.cd 280






