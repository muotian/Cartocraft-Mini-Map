# 執行者：右鍵的玩家
# 執行位置：同上

advancement revoke @s only brown_wool:brown_wool.thunder_rock_hammer

execute unless score @s brown_wool.thunder_rock_hammer.cd2 matches 1.. if score @s brown_wool.thunder_rock_hammer.cd matches 1.. run tellraw @s [{translate:"item.brown_wool.thunder_rock_hammer",color:aqua},{translate:"item.brown_wool.cooldown_time1",color:red}]
execute unless score @s brown_wool.thunder_rock_hammer.cd2 matches 1.. if score @s brown_wool.thunder_rock_hammer.cd matches 1.. run scoreboard players set @s brown_wool.thunder_rock_hammer.cd2 20

execute unless score @s brown_wool.thunder_rock_hammer.cd matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] rotated ~ 0 run summon minecraft:item_display ^ ^0.1 ^1 {Tags:["brown_wool.thunder_rock_hammer1","brown_wool.thunder_rock_hammer0"]}
execute unless score @s brown_wool.thunder_rock_hammer.cd matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run scoreboard players set @s brown_wool.thunder_rock_hammer.cd2 20
execute unless score @s brown_wool.thunder_rock_hammer.cd matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run scoreboard players set @s brown_wool.thunder_rock_hammer.cd 160

execute unless score @s brown_wool.thunder_rock_hammer.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. rotated ~ 0 run summon minecraft:item_display ^ ^0.1 ^1 {Tags:["brown_wool.thunder_rock_hammer2","brown_wool.thunder_rock_hammer0"]}
execute unless score @s brown_wool.thunder_rock_hammer.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 3
execute unless score @s brown_wool.thunder_rock_hammer.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]
execute unless score @s brown_wool.thunder_rock_hammer.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run scoreboard players set @s brown_wool.thunder_rock_hammer.cd2 20
execute unless score @s brown_wool.thunder_rock_hammer.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run scoreboard players set @s brown_wool.thunder_rock_hammer.cd 160

execute unless score @s brown_wool.thunder_rock_hammer.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. rotated ~ 0 run summon minecraft:item_display ^ ^0.1 ^1 {Tags:["brown_wool.thunder_rock_hammer1","brown_wool.thunder_rock_hammer0"]}
execute unless score @s brown_wool.thunder_rock_hammer.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]
execute unless score @s brown_wool.thunder_rock_hammer.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. run scoreboard players set @s brown_wool.thunder_rock_hammer.cd2 20
execute unless score @s brown_wool.thunder_rock_hammer.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. run scoreboard players set @s brown_wool.thunder_rock_hammer.cd 160








