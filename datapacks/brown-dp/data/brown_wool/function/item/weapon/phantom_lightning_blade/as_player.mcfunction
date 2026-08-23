# 執行者：右鍵的玩家
# 執行位置：同上

execute unless score @s brown_wool.phantom_lightning_blade.cd2 matches 1.. if score @s brown_wool.phantom_lightning_blade.cd matches 1.. run tellraw @s [{translate:"item.brown_wool.phantom_lightning_blade",color:aqua},{translate:"item.brown_wool.cooldown_time1",color:red}]
execute unless score @s brown_wool.phantom_lightning_blade.cd2 matches 1.. if score @s brown_wool.phantom_lightning_blade.cd matches 1.. run scoreboard players set @s brown_wool.phantom_lightning_blade.cd2 20

execute unless score @s brown_wool.phantom_lightning_blade.cd matches 1.. unless score @s brown_wool.phantom_lightning_blade1 matches 1.. run tag @s add brown_wool.phantom_lightning_blade
execute unless score @s brown_wool.phantom_lightning_blade.cd matches 1.. unless score @s brown_wool.phantom_lightning_blade1 matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] rotated ~ 0 run summon marker ~ ~0.1 ~ {Tags:["brown_wool.phantom_lightning_blade0","brown_wool.phantom_lightning_blade4"]}

execute unless score @s brown_wool.phantom_lightning_blade.cd matches 1.. unless score @s brown_wool.phantom_lightning_blade1 matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 8.. rotated ~ 0 run summon marker ~ ~0.1 ~ {Tags:["brown_wool.phantom_lightning_blade0","brown_wool.phantom_lightning_blade5"]}
execute unless score @s brown_wool.phantom_lightning_blade.cd matches 1.. unless score @s brown_wool.phantom_lightning_blade1 matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 8.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 8
execute unless score @s brown_wool.phantom_lightning_blade.cd matches 1.. unless score @s brown_wool.phantom_lightning_blade1 matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 8.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]

execute unless score @s brown_wool.phantom_lightning_blade.cd matches 1.. unless score @s brown_wool.phantom_lightning_blade1 matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 8.. rotated ~ 0 run summon marker ~ ~0.1 ~ {Tags:["brown_wool.phantom_lightning_blade0","brown_wool.phantom_lightning_blade4"]}
execute unless score @s brown_wool.phantom_lightning_blade.cd matches 1.. unless score @s brown_wool.phantom_lightning_blade1 matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 8.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]


execute unless score @s brown_wool.phantom_lightning_blade.cd matches 1.. unless score @s brown_wool.phantom_lightning_blade1 matches 1.. at @s as @n[type=marker,tag=brown_wool.phantom_lightning_blade0,tag=!brown_wool.phantom_lightning_blade0.0] at @p[tag=brown_wool.phantom_lightning_blade] run tp @s ~ ~0.1 ~ ~ ~
execute unless score @s brown_wool.phantom_lightning_blade.cd matches 1.. unless score @s brown_wool.phantom_lightning_blade1 matches 1.. run tag @s remove brown_wool.phantom_lightning_blade


execute unless score @s brown_wool.phantom_lightning_blade.cd matches 1.. run playsound entity.experience_orb.pickup player @s


execute unless score @s brown_wool.phantom_lightning_blade.cd matches 1.. run scoreboard players add @s brown_wool.phantom_lightning_blade1 1
execute unless score @s brown_wool.phantom_lightning_blade.cd matches 1.. run scoreboard players set @s brown_wool.phantom_lightning_blade.cd2 20





