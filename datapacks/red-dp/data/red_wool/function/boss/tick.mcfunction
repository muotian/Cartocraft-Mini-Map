function red_wool:boss/boss_hp/run

bossbar set minecraft:red_wool.boss visible true
bossbar set minecraft:red_wool.boss players @a[predicate = red_wool:in_boss_area]

execute unless predicate red_wool:in_boss_area run execute at @n[tag = red_wool.center] run tp @s ~-37 ~52 ~32

execute at @n[tag = red_wool.center] run fill ~-22 ~70 ~47 ~-52 ~52 ~16 air destroy

effect give @s fire_resistance infinite

scoreboard players remove skill_cool_down red_wool.boss 1
execute if score skill_cool_down red_wool.boss matches ..0 run function red_wool:boss/skill/choose

execute if score hp red_wool.boss matches ..0 run function red_wool:boss/kill_boss

bossbar set red_wool.boss name [\
    {"translate":"red_wool.boss", color:red},\
    " | HP : ", {score:{name:"hp", objective:"red_wool.boss"}, color:"white"}, " | ",\
    {"translate":"red_wool.boss.lore.1", color:red}, {score:{name:"boss_take_damage_muti", objective:"red_wool.boss"}, color:"white"}, {text:" % ", "color":red}\
]

item replace entity @s weapon.mainhand with totem_of_undying