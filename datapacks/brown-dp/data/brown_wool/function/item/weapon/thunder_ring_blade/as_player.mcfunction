# 執行者：右鍵的玩家
# 執行位置：同上

advancement revoke @s only brown_wool:brown_wool.thunder_ring_blade

execute unless score @s brown_wool.thunder_ring_blade.cd2 matches 1.. if score @s brown_wool.thunder_ring_blade.cd matches 1.. unless score @s brown_wool.thunder_ring_blade2 matches 1.. run tellraw @s [{translate:"item.brown_wool.thunder_ring_blade",color:aqua},{translate:"item.brown_wool.cooldown_time1",color:red}]
execute unless score @s brown_wool.thunder_ring_blade.cd2 matches 1.. if score @s brown_wool.thunder_ring_blade.cd matches 1.. unless score @s brown_wool.thunder_ring_blade2 matches 1.. run scoreboard players set @s brown_wool.thunder_ring_blade.cd2 20

execute unless score @s brown_wool.thunder_ring_blade.cd matches 1.. unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run tag @s add brown_wool.thunder_ring_blade01

execute unless score @s brown_wool.thunder_ring_blade.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 10.. run tag @s add brown_wool.thunder_ring_blade02
execute unless score @s brown_wool.thunder_ring_blade.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 10.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 10
execute unless score @s brown_wool.thunder_ring_blade.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 10.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]

execute unless score @s brown_wool.thunder_ring_blade.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 10.. run tag @s add brown_wool.thunder_ring_blade01
execute unless score @s brown_wool.thunder_ring_blade.cd matches 1.. if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 10.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]


execute if score @s brown_wool.thunder_ring_blade.cd matches 1.. if score @s brown_wool.thunder_ring_blade2 matches 1..17 unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run tag @s add brown_wool.thunder_ring_blade03

execute if score @s brown_wool.thunder_ring_blade.cd matches 1.. if score @s brown_wool.thunder_ring_blade2 matches 1..17 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 10.. run tag @s add brown_wool.thunder_ring_blade04
execute if score @s brown_wool.thunder_ring_blade.cd matches 1.. if score @s brown_wool.thunder_ring_blade2 matches 1..17 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 10.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 10
execute if score @s brown_wool.thunder_ring_blade.cd matches 1.. if score @s brown_wool.thunder_ring_blade2 matches 1..17 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 10.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]

execute if score @s brown_wool.thunder_ring_blade.cd matches 1.. if score @s brown_wool.thunder_ring_blade2 matches 1..17 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 10.. run tag @s add brown_wool.thunder_ring_blade03
execute if score @s brown_wool.thunder_ring_blade.cd matches 1.. if score @s brown_wool.thunder_ring_blade2 matches 1..17 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 10.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]


execute if entity @s[tag=brown_wool.thunder_ring_blade01] at @s as @a[distance=..5] run playsound entity.player.attack.sweep master @s
execute if entity @s[tag=brown_wool.thunder_ring_blade01] run tag @s add brown_wool.thunder_ring_blade1
execute if entity @s[tag=brown_wool.thunder_ring_blade01] at @s rotated ~ 0 run summon minecraft:marker ~ ~ ~ {Tags:["brown_wool.thunder_ring_blade1","brown_wool.thunder_ring_blade0"]}
execute if entity @s[tag=brown_wool.thunder_ring_blade01] at @s as @n[type=marker,tag=brown_wool.thunder_ring_blade1] at @p[tag=brown_wool.thunder_ring_blade1] run tp @s ^ ^1.6 ^0.1 ~ ~
execute if entity @s[tag=brown_wool.thunder_ring_blade01] run tag @s remove brown_wool.thunder_ring_blade1
execute if entity @s[tag=brown_wool.thunder_ring_blade01] run scoreboard players set @s brown_wool.thunder_ring_blade.cd2 20
execute if entity @s[tag=brown_wool.thunder_ring_blade01] run scoreboard players set @s brown_wool.thunder_ring_blade.cd 500
execute if entity @s[tag=brown_wool.thunder_ring_blade01] run scoreboard players set @s brown_wool.thunder_ring_blade2 20


execute if entity @s[tag=brown_wool.thunder_ring_blade02] at @s as @a[distance=..5] run playsound entity.player.attack.sweep master @s
execute if entity @s[tag=brown_wool.thunder_ring_blade02] run tag @s add brown_wool.thunder_ring_blade3
execute if entity @s[tag=brown_wool.thunder_ring_blade02] at @s rotated ~ 0 run summon minecraft:marker ~ ~ ~ {Tags:["brown_wool.thunder_ring_blade3","brown_wool.thunder_ring_blade0"]}
execute if entity @s[tag=brown_wool.thunder_ring_blade02] at @s as @n[type=marker,tag=brown_wool.thunder_ring_blade3] at @p[tag=brown_wool.thunder_ring_blade3] run tp @s ^ ^1.6 ^0.1 ~ ~
execute if entity @s[tag=brown_wool.thunder_ring_blade02] run tag @s remove brown_wool.thunder_ring_blade3
execute if entity @s[tag=brown_wool.thunder_ring_blade02] run scoreboard players set @s brown_wool.thunder_ring_blade.cd2 20
execute if entity @s[tag=brown_wool.thunder_ring_blade02] run scoreboard players set @s brown_wool.thunder_ring_blade.cd 500
execute if entity @s[tag=brown_wool.thunder_ring_blade02] run scoreboard players set @s brown_wool.thunder_ring_blade2 20



execute if entity @s[tag=brown_wool.thunder_ring_blade03] at @s as @a[distance=..5] run playsound entity.player.attack.sweep master @s
execute if entity @s[tag=brown_wool.thunder_ring_blade03] run tag @s add brown_wool.thunder_ring_blade2
execute if entity @s[tag=brown_wool.thunder_ring_blade03] at @s rotated ~ 0 run summon minecraft:marker ~ ~ ~ {Tags:["brown_wool.thunder_ring_blade2","brown_wool.thunder_ring_blade0"]}
execute if entity @s[tag=brown_wool.thunder_ring_blade03] at @s as @n[type=marker,tag=brown_wool.thunder_ring_blade2] at @p[tag=brown_wool.thunder_ring_blade2] run tp @s ^ ^1.6 ^0.1 ~ ~
execute if entity @s[tag=brown_wool.thunder_ring_blade03] run tag @s remove brown_wool.thunder_ring_blade2
execute if entity @s[tag=brown_wool.thunder_ring_blade03] run scoreboard players set @s brown_wool.thunder_ring_blade.cd2 20
execute if entity @s[tag=brown_wool.thunder_ring_blade03] run scoreboard players set @s brown_wool.thunder_ring_blade.cd 1200
execute if entity @s[tag=brown_wool.thunder_ring_blade03] run scoreboard players reset @s brown_wool.thunder_ring_blade2


execute if entity @s[tag=brown_wool.thunder_ring_blade04] at @s as @a[distance=..5] run playsound entity.player.attack.sweep master @s
execute if entity @s[tag=brown_wool.thunder_ring_blade04] run tag @s add brown_wool.thunder_ring_blade4
execute if entity @s[tag=brown_wool.thunder_ring_blade04] at @s rotated ~ 0 run summon minecraft:marker ~ ~ ~ {Tags:["brown_wool.thunder_ring_blade4","brown_wool.thunder_ring_blade0"]}
execute if entity @s[tag=brown_wool.thunder_ring_blade04] at @s as @n[type=marker,tag=brown_wool.thunder_ring_blade4] at @p[tag=brown_wool.thunder_ring_blade4] run tp @s ^ ^1.6 ^0.1 ~ ~
execute if entity @s[tag=brown_wool.thunder_ring_blade04] run tag @s remove brown_wool.thunder_ring_blade4
execute if entity @s[tag=brown_wool.thunder_ring_blade04] run scoreboard players set @s brown_wool.thunder_ring_blade.cd2 20
execute if entity @s[tag=brown_wool.thunder_ring_blade04] run scoreboard players set @s brown_wool.thunder_ring_blade.cd 1200
execute if entity @s[tag=brown_wool.thunder_ring_blade04] run scoreboard players reset @s brown_wool.thunder_ring_blade2



tag @s remove brown_wool.thunder_ring_blade01
tag @s remove brown_wool.thunder_ring_blade02
tag @s remove brown_wool.thunder_ring_blade03
tag @s remove brown_wool.thunder_ring_blade04




