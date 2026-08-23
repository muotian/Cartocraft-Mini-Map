# 執行者：右鍵的玩家
# 執行位置：同上

advancement revoke @s only brown_wool:brown_wool.thunder_blade_alter
execute unless score @s brown_wool.thunder_blade_alter.cd2 matches 1.. if score @s brown_wool.thunder_blade_alter.cd matches 1.. unless score @s brown_wool.thunder_blade_alter5 matches 1.. run tellraw @s [{translate:"item.brown_wool.thunder_blade_alter",color:aqua},{translate:"item.brown_wool.cooldown_time1",color:red}]
execute unless score @s brown_wool.thunder_blade_alter.cd2 matches 1.. if score @s brown_wool.thunder_blade_alter.cd matches 1.. unless score @s brown_wool.thunder_blade_alter5 matches 1.. run scoreboard players set @s brown_wool.thunder_blade_alter.cd2 20

execute unless score @s brown_wool.thunder_blade_alter.cd matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run tag @s add brown_wool.thunder_blade_alter01

execute unless score @s brown_wool.thunder_blade_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 4.. run tag @s add brown_wool.thunder_blade_alter02
execute unless score @s brown_wool.thunder_blade_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 4.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 4
execute unless score @s brown_wool.thunder_blade_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 4.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]

execute unless score @s brown_wool.thunder_blade_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 4.. run tag @s add brown_wool.thunder_blade_alter01
execute unless score @s brown_wool.thunder_blade_alter.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 4.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]


execute if score @s brown_wool.thunder_blade_alter.cd matches 1.. if score @s brown_wool.thunder_blade_alter5 matches 1..17 unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run tag @s add brown_wool.thunder_blade_alter03

execute if score @s brown_wool.thunder_blade_alter.cd matches 1.. if score @s brown_wool.thunder_blade_alter5 matches 1..17 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 4.. run tag @s add brown_wool.thunder_blade_alter04
execute if score @s brown_wool.thunder_blade_alter.cd matches 1.. if score @s brown_wool.thunder_blade_alter5 matches 1..17 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 4.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 4
execute if score @s brown_wool.thunder_blade_alter.cd matches 1.. if score @s brown_wool.thunder_blade_alter5 matches 1..17 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 4.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]

execute if score @s brown_wool.thunder_blade_alter.cd matches 1.. if score @s brown_wool.thunder_blade_alter5 matches 1..17 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 4.. run tag @s add brown_wool.thunder_blade_alter03
execute if score @s brown_wool.thunder_blade_alter.cd matches 1.. if score @s brown_wool.thunder_blade_alter5 matches 1..17 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 4.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]



execute if entity @s[tag=brown_wool.thunder_blade_alter01] at @s as @a[distance=..5] run playsound entity.player.attack.sweep master @s
execute if entity @s[tag=brown_wool.thunder_blade_alter01] at @s rotated ~ 0 run function brown_wool:item/weapon/thunder_blade_alter/particle
execute if entity @s[tag=brown_wool.thunder_blade_alter01] at @s rotated ~ 0 positioned ^2.08 ^1 ^0.16 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter01]
execute if entity @s[tag=brown_wool.thunder_blade_alter01] at @s rotated ~ 0 positioned ^1.68 ^1 ^0.49 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter01]
execute if entity @s[tag=brown_wool.thunder_blade_alter01] at @s rotated ~ 0 positioned ^1.22 ^1 ^0.74 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter01]
execute if entity @s[tag=brown_wool.thunder_blade_alter01] at @s rotated ~ 0 positioned ^0.73 ^1 ^0.91 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter01]
execute if entity @s[tag=brown_wool.thunder_blade_alter01] at @s rotated ~ 0 positioned ^0.21 ^1 ^0.99 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter01]
execute if entity @s[tag=brown_wool.thunder_blade_alter01] at @s rotated ~ 0 positioned ^-0.31 ^1 ^0.98 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter01]
execute if entity @s[tag=brown_wool.thunder_blade_alter01] at @s rotated ~ 0 positioned ^-0.83 ^1 ^0.88 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter01]
execute if entity @s[tag=brown_wool.thunder_blade_alter01] at @s rotated ~ 0 positioned ^-1.32 ^1 ^0.7 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter01]
execute if entity @s[tag=brown_wool.thunder_blade_alter01] at @s rotated ~ 0 positioned ^-1.76 ^1 ^0.43 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter01]
execute if entity @s[tag=brown_wool.thunder_blade_alter01] at @s rotated ~ 0 positioned ^-2.16 ^1 ^0.08 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter01]
execute if entity @s[tag=brown_wool.thunder_blade_alter01] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","input": {"sneak": true}}}} run scoreboard players set @s brown_wool.thunder_blade_alter1 4
execute if entity @s[tag=brown_wool.thunder_blade_alter01] if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","input": {"sneak": true}}}} run scoreboard players set @s brown_wool.thunder_blade_alter2 4
execute if entity @s[tag=brown_wool.thunder_blade_alter01] run scoreboard players set @s brown_wool.thunder_blade_alter6 20
execute if entity @s[tag=brown_wool.thunder_blade_alter01] run scoreboard players set @s brown_wool.thunder_blade_alter.cd2 20
execute if entity @s[tag=brown_wool.thunder_blade_alter01] run scoreboard players set @s brown_wool.thunder_blade_alter.cd 120
execute if entity @s[tag=brown_wool.thunder_blade_alter01] run scoreboard players set @s brown_wool.thunder_blade_alter5 20


execute if entity @s[tag=brown_wool.thunder_blade_alter02] at @s as @a[distance=..5] run playsound entity.player.attack.sweep master @s
execute if entity @s[tag=brown_wool.thunder_blade_alter02] at @s rotated ~ 0 run function brown_wool:item/weapon/thunder_blade_alter/particle
execute if entity @s[tag=brown_wool.thunder_blade_alter02] at @s rotated ~ 0 positioned ^2.08 ^1 ^0.16 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter02]
execute if entity @s[tag=brown_wool.thunder_blade_alter02] at @s rotated ~ 0 positioned ^1.68 ^1 ^0.49 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter02]
execute if entity @s[tag=brown_wool.thunder_blade_alter02] at @s rotated ~ 0 positioned ^1.22 ^1 ^0.74 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter02]
execute if entity @s[tag=brown_wool.thunder_blade_alter02] at @s rotated ~ 0 positioned ^0.73 ^1 ^0.91 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter02]
execute if entity @s[tag=brown_wool.thunder_blade_alter02] at @s rotated ~ 0 positioned ^0.21 ^1 ^0.99 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter02]
execute if entity @s[tag=brown_wool.thunder_blade_alter02] at @s rotated ~ 0 positioned ^-0.31 ^1 ^0.98 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter02]
execute if entity @s[tag=brown_wool.thunder_blade_alter02] at @s rotated ~ 0 positioned ^-0.83 ^1 ^0.88 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter02]
execute if entity @s[tag=brown_wool.thunder_blade_alter02] at @s rotated ~ 0 positioned ^-1.32 ^1 ^0.7 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter02]
execute if entity @s[tag=brown_wool.thunder_blade_alter02] at @s rotated ~ 0 positioned ^-1.76 ^1 ^0.43 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter02]
execute if entity @s[tag=brown_wool.thunder_blade_alter02] at @s rotated ~ 0 positioned ^-2.16 ^1 ^0.08 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter02]
execute if entity @s[tag=brown_wool.thunder_blade_alter02] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","input": {"sneak": true}}}} run scoreboard players set @s brown_wool.thunder_blade_alter3 4
execute if entity @s[tag=brown_wool.thunder_blade_alter02] if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","input": {"sneak": true}}}} run scoreboard players set @s brown_wool.thunder_blade_alter4 4
execute if entity @s[tag=brown_wool.thunder_blade_alter02] run scoreboard players set @s brown_wool.thunder_blade_alter6 20
execute if entity @s[tag=brown_wool.thunder_blade_alter02] run scoreboard players set @s brown_wool.thunder_blade_alter.cd2 20
execute if entity @s[tag=brown_wool.thunder_blade_alter02] run scoreboard players set @s brown_wool.thunder_blade_alter.cd 120
execute if entity @s[tag=brown_wool.thunder_blade_alter02] run scoreboard players set @s brown_wool.thunder_blade_alter5 20



execute if entity @s[tag=brown_wool.thunder_blade_alter03] at @s as @a[distance=..5] run playsound entity.player.attack.sweep master @s
execute if entity @s[tag=brown_wool.thunder_blade_alter03] at @s rotated ~ 0 run function brown_wool:item/weapon/thunder_blade_alter/particle
execute if entity @s[tag=brown_wool.thunder_blade_alter03] at @s rotated ~ 0 positioned ^2.08 ^1 ^0.16 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter03]
execute if entity @s[tag=brown_wool.thunder_blade_alter03] at @s rotated ~ 0 positioned ^1.68 ^1 ^0.49 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter03]
execute if entity @s[tag=brown_wool.thunder_blade_alter03] at @s rotated ~ 0 positioned ^1.22 ^1 ^0.74 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter03]
execute if entity @s[tag=brown_wool.thunder_blade_alter03] at @s rotated ~ 0 positioned ^0.73 ^1 ^0.91 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter03]
execute if entity @s[tag=brown_wool.thunder_blade_alter03] at @s rotated ~ 0 positioned ^0.21 ^1 ^0.99 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter03]
execute if entity @s[tag=brown_wool.thunder_blade_alter03] at @s rotated ~ 0 positioned ^-0.31 ^1 ^0.98 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter03]
execute if entity @s[tag=brown_wool.thunder_blade_alter03] at @s rotated ~ 0 positioned ^-0.83 ^1 ^0.88 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter03]
execute if entity @s[tag=brown_wool.thunder_blade_alter03] at @s rotated ~ 0 positioned ^-1.32 ^1 ^0.7 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter03]
execute if entity @s[tag=brown_wool.thunder_blade_alter03] at @s rotated ~ 0 positioned ^-1.76 ^1 ^0.43 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter03]
execute if entity @s[tag=brown_wool.thunder_blade_alter03] at @s rotated ~ 0 positioned ^-2.16 ^1 ^0.08 as @e[type=!player,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade_alter03]
execute if entity @s[tag=brown_wool.thunder_blade_alter03] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","input": {"sneak": true}}}} run scoreboard players set @s brown_wool.thunder_blade_alter1 4
execute if entity @s[tag=brown_wool.thunder_blade_alter03] if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","input": {"sneak": true}}}} run scoreboard players set @s brown_wool.thunder_blade_alter2 4
execute if entity @s[tag=brown_wool.thunder_blade_alter03] run scoreboard players set @s brown_wool.thunder_blade_alter6 4
execute if entity @s[tag=brown_wool.thunder_blade_alter03] run scoreboard players set @s brown_wool.thunder_blade_alter.cd2 20
execute if entity @s[tag=brown_wool.thunder_blade_alter03] run scoreboard players set @s brown_wool.thunder_blade_alter.cd 280
execute if entity @s[tag=brown_wool.thunder_blade_alter03] run scoreboard players reset @s brown_wool.thunder_blade_alter5


execute if entity @s[tag=brown_wool.thunder_blade_alter04] at @s as @a[distance=..5] run playsound entity.player.attack.sweep master @s
execute if entity @s[tag=brown_wool.thunder_blade_alter04] at @s rotated ~ 0 run function brown_wool:item/weapon/thunder_blade_alter/particle
execute if entity @s[tag=brown_wool.thunder_blade_alter04] at @s rotated ~ 0 positioned ^2.08 ^1 ^0.16 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter04]
execute if entity @s[tag=brown_wool.thunder_blade_alter04] at @s rotated ~ 0 positioned ^1.68 ^1 ^0.49 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter04]
execute if entity @s[tag=brown_wool.thunder_blade_alter04] at @s rotated ~ 0 positioned ^1.22 ^1 ^0.74 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter04]
execute if entity @s[tag=brown_wool.thunder_blade_alter04] at @s rotated ~ 0 positioned ^0.73 ^1 ^0.91 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter04]
execute if entity @s[tag=brown_wool.thunder_blade_alter04] at @s rotated ~ 0 positioned ^0.21 ^1 ^0.99 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter04]
execute if entity @s[tag=brown_wool.thunder_blade_alter04] at @s rotated ~ 0 positioned ^-0.31 ^1 ^0.98 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter04]
execute if entity @s[tag=brown_wool.thunder_blade_alter04] at @s rotated ~ 0 positioned ^-0.83 ^1 ^0.88 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter04]
execute if entity @s[tag=brown_wool.thunder_blade_alter04] at @s rotated ~ 0 positioned ^-1.32 ^1 ^0.7 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter04]
execute if entity @s[tag=brown_wool.thunder_blade_alter04] at @s rotated ~ 0 positioned ^-1.76 ^1 ^0.43 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter04]
execute if entity @s[tag=brown_wool.thunder_blade_alter04] at @s rotated ~ 0 positioned ^-2.16 ^1 ^0.08 as @e[type=!player,distance=..2] run damage @s 20 player_attack by @p[tag=brown_wool.thunder_blade_alter04]
execute if entity @s[tag=brown_wool.thunder_blade_alter04] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","input": {"sneak": true}}}} run scoreboard players set @s brown_wool.thunder_blade_alter3 4
execute if entity @s[tag=brown_wool.thunder_blade_alter04] if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","input": {"sneak": true}}}} run scoreboard players set @s brown_wool.thunder_blade_alter4 4
execute if entity @s[tag=brown_wool.thunder_blade_alter04] run scoreboard players set @s brown_wool.thunder_blade_alter6 4
execute if entity @s[tag=brown_wool.thunder_blade_alter04] run scoreboard players set @s brown_wool.thunder_blade_alter.cd2 20
execute if entity @s[tag=brown_wool.thunder_blade_alter04] run scoreboard players set @s brown_wool.thunder_blade_alter.cd 280
execute if entity @s[tag=brown_wool.thunder_blade_alter04] run scoreboard players reset @s brown_wool.thunder_blade_alter5



tag @s remove brown_wool.thunder_blade_alter01
tag @s remove brown_wool.thunder_blade_alter02
tag @s remove brown_wool.thunder_blade_alter03
tag @s remove brown_wool.thunder_blade_alter04




