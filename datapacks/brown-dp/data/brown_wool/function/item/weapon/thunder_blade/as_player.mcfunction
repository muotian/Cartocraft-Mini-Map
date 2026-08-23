# 執行者：右鍵的玩家
# 執行位置：同上

advancement revoke @s only brown_wool:brown_wool.thunder_blade
execute unless score @s brown_wool.thunder_blade.cd2 matches 1.. if score @s brown_wool.thunder_blade.cd matches 1.. run tellraw @s [{translate:"item.brown_wool.thunder_blade",color:aqua},{translate:"item.brown_wool.cooldown_time1",color:red}]
execute unless score @s brown_wool.thunder_blade.cd2 matches 1.. if score @s brown_wool.thunder_blade.cd matches 1.. run scoreboard players set @s brown_wool.thunder_blade.cd2 20
execute unless score @s brown_wool.thunder_blade.cd matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run tag @s add brown_wool.thunder_blade01

execute unless score @s brown_wool.thunder_blade.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 2.. run tag @s add brown_wool.thunder_blade02
execute unless score @s brown_wool.thunder_blade.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 2.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 2
execute unless score @s brown_wool.thunder_blade.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 2.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]

execute unless score @s brown_wool.thunder_blade.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 2.. run tag @s add brown_wool.thunder_blade01
execute unless score @s brown_wool.thunder_blade.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 2.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]



execute if entity @s[tag=brown_wool.thunder_blade01] at @s as @a[distance=..5] run playsound entity.player.attack.sweep master @s
execute if entity @s[tag=brown_wool.thunder_blade01] at @s rotated ~ 0 run function brown_wool:item/weapon/thunder_blade/particle
execute if entity @s[tag=brown_wool.thunder_blade01] at @s rotated ~ 0 positioned ^2.08 ^1 ^0.16 as @e[type=!player,type=!item,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade01]
execute if entity @s[tag=brown_wool.thunder_blade01] at @s rotated ~ 0 positioned ^1.68 ^1 ^0.49 as @e[type=!player,type=!item,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade01]
execute if entity @s[tag=brown_wool.thunder_blade01] at @s rotated ~ 0 positioned ^1.22 ^1 ^0.74 as @e[type=!player,type=!item,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade01]
execute if entity @s[tag=brown_wool.thunder_blade01] at @s rotated ~ 0 positioned ^0.73 ^1 ^0.91 as @e[type=!player,type=!item,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade01]
execute if entity @s[tag=brown_wool.thunder_blade01] at @s rotated ~ 0 positioned ^0.21 ^1 ^0.99 as @e[type=!player,type=!item,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade01]
execute if entity @s[tag=brown_wool.thunder_blade01] at @s rotated ~ 0 positioned ^-0.31 ^1 ^0.98 as @e[type=!player,type=!item,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade01]
execute if entity @s[tag=brown_wool.thunder_blade01] at @s rotated ~ 0 positioned ^-0.83 ^1 ^0.88 as @e[type=!player,type=!item,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade01]
execute if entity @s[tag=brown_wool.thunder_blade01] at @s rotated ~ 0 positioned ^-1.32 ^1 ^0.7 as @e[type=!player,type=!item,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade01]
execute if entity @s[tag=brown_wool.thunder_blade01] at @s rotated ~ 0 positioned ^-1.76 ^1 ^0.43 as @e[type=!player,type=!item,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade01]
execute if entity @s[tag=brown_wool.thunder_blade01] at @s rotated ~ 0 positioned ^-2.16 ^1 ^0.08 as @e[type=!player,type=!item,distance=..2] run damage @s 14 player_attack by @p[tag=brown_wool.thunder_blade01]
execute if entity @s[tag=brown_wool.thunder_blade01] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","input": {"sneak": true}}}} run scoreboard players set @s brown_wool.thunder_blade1 4
execute if entity @s[tag=brown_wool.thunder_blade01] if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","input": {"sneak": true}}}} run scoreboard players set @s brown_wool.thunder_blade2 4
execute if entity @s[tag=brown_wool.thunder_blade01] run scoreboard players set @s brown_wool.thunder_blade5 4
execute if entity @s[tag=brown_wool.thunder_blade01] run scoreboard players set @s brown_wool.thunder_blade.cd2 20
execute if entity @s[tag=brown_wool.thunder_blade01] run scoreboard players set @s brown_wool.thunder_blade.cd 120


execute if entity @s[tag=brown_wool.thunder_blade02] at @s as @a[distance=..5] run playsound entity.player.attack.sweep master @s
execute if entity @s[tag=brown_wool.thunder_blade02] at @s rotated ~ 0 run function brown_wool:item/weapon/thunder_blade/particle
execute if entity @s[tag=brown_wool.thunder_blade02] at @s rotated ~ 0 positioned ^2.08 ^1 ^0.16 as @e[type=!player,type=!item,distance=..2] run damage @s 18 player_attack by @p[tag=brown_wool.thunder_blade02]
execute if entity @s[tag=brown_wool.thunder_blade02] at @s rotated ~ 0 positioned ^1.68 ^1 ^0.49 as @e[type=!player,type=!item,distance=..2] run damage @s 18 player_attack by @p[tag=brown_wool.thunder_blade02]
execute if entity @s[tag=brown_wool.thunder_blade02] at @s rotated ~ 0 positioned ^1.22 ^1 ^0.74 as @e[type=!player,type=!item,distance=..2] run damage @s 18 player_attack by @p[tag=brown_wool.thunder_blade02]
execute if entity @s[tag=brown_wool.thunder_blade02] at @s rotated ~ 0 positioned ^0.73 ^1 ^0.91 as @e[type=!player,type=!item,distance=..2] run damage @s 18 player_attack by @p[tag=brown_wool.thunder_blade02]
execute if entity @s[tag=brown_wool.thunder_blade02] at @s rotated ~ 0 positioned ^0.21 ^1 ^0.99 as @e[type=!player,type=!item,distance=..2] run damage @s 18 player_attack by @p[tag=brown_wool.thunder_blade02]
execute if entity @s[tag=brown_wool.thunder_blade02] at @s rotated ~ 0 positioned ^-0.31 ^1 ^0.98 as @e[type=!player,type=!item,distance=..2] run damage @s 18 player_attack by @p[tag=brown_wool.thunder_blade02]
execute if entity @s[tag=brown_wool.thunder_blade02] at @s rotated ~ 0 positioned ^-0.83 ^1 ^0.88 as @e[type=!player,type=!item,distance=..2] run damage @s 18 player_attack by @p[tag=brown_wool.thunder_blade02]
execute if entity @s[tag=brown_wool.thunder_blade02] at @s rotated ~ 0 positioned ^-1.32 ^1 ^0.7 as @e[type=!player,type=!item,distance=..2] run damage @s 18 player_attack by @p[tag=brown_wool.thunder_blade02]
execute if entity @s[tag=brown_wool.thunder_blade02] at @s rotated ~ 0 positioned ^-1.76 ^1 ^0.43 as @e[type=!player,type=!item,distance=..2] run damage @s 18 player_attack by @p[tag=brown_wool.thunder_blade02]
execute if entity @s[tag=brown_wool.thunder_blade02] at @s rotated ~ 0 positioned ^-2.16 ^1 ^0.08 as @e[type=!player,type=!item,distance=..2] run damage @s 18 player_attack by @p[tag=brown_wool.thunder_blade02]
execute if entity @s[tag=brown_wool.thunder_blade02] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","input": {"sneak": true}}}} run scoreboard players set @s brown_wool.thunder_blade3 4
execute if entity @s[tag=brown_wool.thunder_blade02] if predicate {"condition": "entity_properties","entity": "this","predicate": {"type_specific": {"type": "player","input": {"sneak": true}}}} run scoreboard players set @s brown_wool.thunder_blade4 4
execute if entity @s[tag=brown_wool.thunder_blade02] run scoreboard players set @s brown_wool.thunder_blade5 4
execute if entity @s[tag=brown_wool.thunder_blade02] run scoreboard players set @s brown_wool.thunder_blade.cd2 20
execute if entity @s[tag=brown_wool.thunder_blade02] run scoreboard players set @s brown_wool.thunder_blade.cd 120


tag @s remove brown_wool.thunder_blade01
tag @s remove brown_wool.thunder_blade02


