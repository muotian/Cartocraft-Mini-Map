# 執行者：右鍵的玩家
# 執行位置：同上

execute unless score @s brown_wool.thunder_rock_fist_blade.cd2 matches 1.. if score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. run tellraw @s [{translate:"item.brown_wool.thunder_rock_fist_blade",color:aqua},{translate:"item.brown_wool.cooldown_time1",color:red}]
execute unless score @s brown_wool.thunder_rock_fist_blade.cd2 matches 1.. if score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. run scoreboard players set @s brown_wool.thunder_rock_fist_blade.cd2 20
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. run tag @s add brown_wool.thunder_rock_fist_blade
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. run scoreboard players set @s brown_wool.thunder_rock_fist_blade.cd2 20
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. run scoreboard players add @s brown_wool.thunder_rock_fist_blade1 1


execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 1 unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run tag @s add brown_wool.thunder_rock_fist_blade1

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 1 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run tag @s add brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 1 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 3
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 1 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 1 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. run tag @s add brown_wool.thunder_rock_fist_blade1
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 1 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 21 run tag @s remove brown_wool.thunder_rock_fist_blade1
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 21 run tag @s remove brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 21 run scoreboard players reset @s brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 21 run scoreboard players reset @s brown_wool.thunder_rock_fist_blade3

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 21 unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run tag @s add brown_wool.thunder_rock_fist_blade1

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 21 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run tag @s add brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 21 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 3
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 21 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 21 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. run tag @s add brown_wool.thunder_rock_fist_blade1
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 21 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]



execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 41 run tag @s remove brown_wool.thunder_rock_fist_blade1
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 41 run tag @s remove brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 41 run scoreboard players reset @s brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 41 run scoreboard players reset @s brown_wool.thunder_rock_fist_blade3

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 41 unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run tag @s add brown_wool.thunder_rock_fist_blade1

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 41 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run tag @s add brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 41 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 3
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 41 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 41 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. run tag @s add brown_wool.thunder_rock_fist_blade1
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 41 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]



execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 61 run tag @s remove brown_wool.thunder_rock_fist_blade1
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 61 run tag @s remove brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 61 run scoreboard players reset @s brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 61 run scoreboard players reset @s brown_wool.thunder_rock_fist_blade3

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 61 unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run tag @s add brown_wool.thunder_rock_fist_blade1

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 61 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run tag @s add brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 61 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 3
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 61 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 61 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. run tag @s add brown_wool.thunder_rock_fist_blade1
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 61 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]



execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 81 run tag @s remove brown_wool.thunder_rock_fist_blade1
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 81 run tag @s remove brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 81 run scoreboard players reset @s brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 81 run scoreboard players reset @s brown_wool.thunder_rock_fist_blade3

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 81 unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run tag @s add brown_wool.thunder_rock_fist_blade1

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 81 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run tag @s add brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 81 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 3
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 81 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 3.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 81 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. run tag @s add brown_wool.thunder_rock_fist_blade1
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 81 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 3.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]



execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 run tag @s remove brown_wool.thunder_rock_fist_blade1
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 run tag @s remove brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 run scoreboard players reset @s brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 run scoreboard players reset @s brown_wool.thunder_rock_fist_blade3

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 unless items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] run tag @s add brown_wool.thunder_rock_fist_blade1

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 7.. run tag @s add brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 7.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 7
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] if score @s brown_wool.lightning_crystal matches 7.. run tellraw @s [{translate:"item.brown_wool.reinforce",color:green}]

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 7.. run tag @s add brown_wool.thunder_rock_fist_blade1
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 if items entity @s weapon.offhand amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] unless score @s brown_wool.lightning_crystal matches 7.. run tellraw @s [{translate:"item.brown_wool.not_reinforce",color:red}]


execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if entity @s[tag=brown_wool.thunder_rock_fist_blade1] run scoreboard players add @s brown_wool.thunder_rock_fist_blade2 1
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if entity @s[tag=brown_wool.thunder_rock_fist_blade2] run scoreboard players add @s brown_wool.thunder_rock_fist_blade3 1

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 1..95 if score @s brown_wool.thunder_rock_fist_blade2 matches 2 run summon item_display ~ ~ ~ {Tags:["brown_wool.thunder_rock_fist_blade1","brown_wool.thunder_rock_fist_blade00"],transformation: {left_rotation: [0.27059805f, 0.6532815f, 0.27059805f, 0.6532815f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.9999999f, 0.9999997f], translation: [0.0f, 0.0f, 0.0f]}}
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 1..95 if score @s brown_wool.thunder_rock_fist_blade3 matches 2 run summon item_display ~ ~ ~ {Tags:["brown_wool.thunder_rock_fist_blade2","brown_wool.thunder_rock_fist_blade00"],transformation: {left_rotation: [0.27059805f, 0.6532815f, 0.27059805f, 0.6532815f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.9999999f, 0.9999997f], translation: [0.0f, 0.0f, 0.0f]}}

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 1..95 if score @s brown_wool.thunder_rock_fist_blade2 matches 2 at @s as @a[distance=..7] run playsound entity.player.attack.sweep master @s
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 1..95 if score @s brown_wool.thunder_rock_fist_blade3 matches 2 at @s as @a[distance=..7] run playsound entity.player.attack.sweep master @s

execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade2 matches 2 run scoreboard players reset @s brown_wool.thunder_rock_fist_blade2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade3 matches 2 run scoreboard players reset @s brown_wool.thunder_rock_fist_blade3



execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 run kill @e[tag=brown_wool.thunder_rock_fist_blade00]
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 if entity @s[tag=brown_wool.thunder_rock_fist_blade1] positioned ^ ^1.6 ^2.5 as @e[type=!player,type=!item,distance=..3] run damage @s 25 brown_wool:bypasses_cooldown2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 if entity @s[tag=brown_wool.thunder_rock_fist_blade2] positioned ^ ^1.6 ^2.5 as @e[type=!player,type=!item,distance=..3] run damage @s 40 brown_wool:bypasses_cooldown2
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 positioned ^ ^1.6 ^2.5 run particle explosion ~ ~ ~ 0.6 0.6 0.6 0.1 50
execute unless score @s brown_wool.thunder_rock_fist_blade.cd matches 1.. if score @s brown_wool.thunder_rock_fist_blade1 matches 101 as @a[distance=..8] run playsound entity.generic.explode player



