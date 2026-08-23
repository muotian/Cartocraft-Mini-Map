# 執行者：右鍵的玩家
# 執行位置：同上



advancement revoke @s only brown_wool:brown_wool.thunderwood_restoration_sword
execute unless score @s brown_wool.thunderwood_restoration_sword.cd2 matches 1.. if score @s brown_wool.thunderwood_restoration_sword.cd matches 1.. run tellraw @s [{translate:"item.brown_wool.thunderwood_restoration_sword",color:aqua},{translate:"item.brown_wool.cooldown_time1",color:red}]
execute unless score @s brown_wool.thunderwood_restoration_sword.cd2 matches 1.. if score @s brown_wool.thunderwood_restoration_sword.cd matches 1.. run scoreboard players set @s brown_wool.thunderwood_restoration_sword.cd2 20

execute unless score @s brown_wool.thunderwood_restoration_sword.cd matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run summon marker ~ ~0.5 ~ {Tags:["brown_wool.thunderwood_restoration_sword00","brown_wool.thunderwood_restoration_sword01"]}

execute unless score @s brown_wool.thunderwood_restoration_sword.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 12.. run summon marker ~ ~0.5 ~ {Tags:["brown_wool.thunderwood_restoration_sword00","brown_wool.thunderwood_restoration_sword02"]}
execute unless score @s brown_wool.thunderwood_restoration_sword.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 12.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 12
execute unless score @s brown_wool.thunderwood_restoration_sword.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 12.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]

execute unless score @s brown_wool.thunderwood_restoration_sword.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 12.. run summon marker ~ ~0.5 ~ {Tags:["brown_wool.thunderwood_restoration_sword00","brown_wool.thunderwood_restoration_sword01"]}
execute unless score @s brown_wool.thunderwood_restoration_sword.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 12.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]

execute unless score @s brown_wool.thunderwood_restoration_sword.cd matches 1.. run scoreboard players set @s brown_wool.thunderwood_restoration_sword.cd2 20
execute unless score @s brown_wool.thunderwood_restoration_sword.cd matches 1.. run scoreboard players set @s brown_wool.thunderwood_restoration_sword.cd 4000






