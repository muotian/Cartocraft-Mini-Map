execute store result score now_hp red_wool.tmp run data get entity @s Health -10
scoreboard players set 10000 red_wool.tmp 10000
scoreboard players operation now_hp red_wool.tmp += 10000 red_wool.tmp
scoreboard players set 100 red_wool.tmp 100

scoreboard players operation now_hp red_wool.tmp *= boss_take_damage_muti red_wool.boss
scoreboard players operation now_hp red_wool.tmp /= 100 red_wool.tmp

execute if score now_hp red_wool.tmp matches 5.. run scoreboard players operation hp red_wool.boss -= now_hp red_wool.tmp
execute if score now_hp red_wool.tmp matches 5.. run function red_wool:boss/boss_hp/set_name

data modify entity @s Health set value 1000

execute store result bossbar minecraft:red_wool.boss max run scoreboard players get max_hp red_wool.boss
execute store result bossbar minecraft:red_wool.boss value run scoreboard players get hp red_wool.boss