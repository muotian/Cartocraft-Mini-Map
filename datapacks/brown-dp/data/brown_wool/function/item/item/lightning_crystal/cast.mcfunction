
advancement revoke @s only brown_wool:brown_wool.lightning_crystal



execute if entity @s[tag=brown_wool.rock_thunder_armor2] unless score @s brown_wool.rock_thunder_armor.combination_cd2 matches 1.. if score @s brown_wool.rock_thunder_armor.combination_cd matches 1.. run tellraw @s [{translate:"item.brown_wool.rock_thunder_armor",color:aqua},{translate:"item.brown_wool.cooldown_time1",color:red}]
execute if entity @s[tag=brown_wool.rock_thunder_armor2] unless score @s brown_wool.rock_thunder_armor.combination_cd2 matches 1.. if score @s brown_wool.rock_thunder_armor.combination_cd matches 1.. run scoreboard players set @s brown_wool.rock_thunder_armor.combination_cd2 20

execute if entity @s[tag=brown_wool.rock_thunder_armor2] unless score @s brown_wool.rock_thunder_armor.combination_cd matches 1.. if score @s brown_wool.lightning_crystal matches 16.. rotated ~ 0 run summon marker ~ ~0.1 ~ {Tags:["brown_wool.rock_guardian_sword00","brown_wool.rock_guardian_sword01"]}
execute if entity @s[tag=brown_wool.rock_thunder_armor2] unless score @s brown_wool.rock_thunder_armor.combination_cd matches 1.. if score @s brown_wool.lightning_crystal matches 16.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 16
execute if entity @s[tag=brown_wool.rock_thunder_armor2] unless score @s brown_wool.rock_thunder_armor.combination_cd matches 1.. if score @s brown_wool.lightning_crystal matches 16.. run tellraw @s [{translate:"item.brown_wool.combination_skill",color:green}]

execute if entity @s[tag=brown_wool.rock_thunder_armor2] unless score @s brown_wool.rock_thunder_armor.combination_cd matches 1.. unless score @s brown_wool.lightning_crystal matches 16.. run tellraw @s [{translate:"item.brown_wool.not_combination_skill",color:red}]

execute if entity @s[tag=brown_wool.rock_thunder_armor2] unless score @s brown_wool.rock_thunder_armor.combination_cd matches 1.. run scoreboard players set @s brown_wool.rock_thunder_armor.combination_cd2 20
execute if entity @s[tag=brown_wool.rock_thunder_armor2] unless score @s brown_wool.rock_thunder_armor.combination_cd matches 1.. run scoreboard players set @s brown_wool.rock_thunder_armor.combination_cd 4800



execute if entity @s[tag=brown_wool.spirit_wood_thunder_armor2] unless score @s brown_wool.spirit_wood_thunder_armor.combination_cd2 matches 1.. if score @s brown_wool.spirit_wood_thunder_armor.combination_cd matches 1.. run tellraw @s [{translate:"item.brown_wool.spirit_wood_thunder_armor",color:aqua},{translate:"item.brown_wool.cooldown_time1",color:red}]
execute if entity @s[tag=brown_wool.spirit_wood_thunder_armor2] unless score @s brown_wool.spirit_wood_thunder_armor.combination_cd2 matches 1.. if score @s brown_wool.spirit_wood_thunder_armor.combination_cd matches 1.. run scoreboard players set @s brown_wool.spirit_wood_thunder_armor.combination_cd2 20

execute if entity @s[tag=brown_wool.spirit_wood_thunder_armor2] unless score @s brown_wool.spirit_wood_thunder_armor.combination_cd matches 1.. if score @s brown_wool.lightning_crystal matches 16.. rotated ~ 0 run summon marker ~ ~0.1 ~ {Tags:["brown_wool.thunderwood_restoration_sword00","brown_wool.thunderwood_restoration_sword01"]}
execute if entity @s[tag=brown_wool.spirit_wood_thunder_armor2] unless score @s brown_wool.spirit_wood_thunder_armor.combination_cd matches 1.. if score @s brown_wool.lightning_crystal matches 16.. run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 16
execute if entity @s[tag=brown_wool.spirit_wood_thunder_armor2] unless score @s brown_wool.spirit_wood_thunder_armor.combination_cd matches 1.. if score @s brown_wool.lightning_crystal matches 16.. run tellraw @s [{translate:"item.brown_wool.combination_skill",color:green}]

execute if entity @s[tag=brown_wool.spirit_wood_thunder_armor2] unless score @s brown_wool.spirit_wood_thunder_armor.combination_cd matches 1.. unless score @s brown_wool.lightning_crystal matches 16.. run tellraw @s [{translate:"item.brown_wool.not_combination_skill",color:red}]

execute if entity @s[tag=brown_wool.spirit_wood_thunder_armor2] unless score @s brown_wool.spirit_wood_thunder_armor.combination_cd matches 1.. run scoreboard players set @s brown_wool.spirit_wood_thunder_armor.combination_cd2 20
execute if entity @s[tag=brown_wool.spirit_wood_thunder_armor2] unless score @s brown_wool.spirit_wood_thunder_armor.combination_cd matches 1.. run scoreboard players set @s brown_wool.spirit_wood_thunder_armor.combination_cd 4800


