execute at @n[tag = red_wool.center] run tp @s ~-37 ~52 ~40 facing entity @p
scoreboard players operation hp red_wool.boss = max_hp red_wool.boss
scoreboard players set skill_cool_down red_wool.boss 40
scoreboard players set skill_num red_wool.boss 0
scoreboard players set creeper red_wool.boss 200
scoreboard players set boss_take_damage_muti red_wool.boss 100

bossbar set minecraft:red_wool.boss visible false

bossbar set minecraft:red_wool.boss.creeper visible false

tp @e[tag = red_wool.boss.pet] ~ -99 ~

kill @e[type = vex, predicate = red_wool:in_boss_area]