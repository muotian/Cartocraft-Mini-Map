advancement revoke @s only red_wool:npc/touch_dragon_egg
execute at @n[tag = red_wool.boss.trigger] run particle explosion ~ ~ ~ 1 1 1 1.0 100 force @a
execute at @n[tag = red_wool.boss.trigger] run playsound entity.generic.explode block @a ~ ~ ~ 1.0 1.0 1.0
execute at @n[tag = red_wool.boss.trigger] run playsound entity.wither.spawn block @a ~ ~ ~ 1.0 1.0 1.0
kill @e[tag = red_wool.boss.trigger]
kill @e[tag = red_wool.boss.trigger.display]

kill @n[tag = red_wool.boss]
kill @e[tag = red_wool.boss.pet]
kill @e[tag = red_wool.vex]

scoreboard players set max_hp red_wool.boss 66666666
scoreboard players operation hp red_wool.boss = max_hp red_wool.boss
scoreboard players set boss_take_damage_muti red_wool.boss 100

scoreboard players set skill_cool_down red_wool.boss 60
scoreboard players set skill_num red_wool.boss 0
scoreboard players set creeper red_wool.boss 200

execute at @n[tag = red_wool.center] positioned ~-37 ~52 ~40 run function red_wool:boss/spawn

bossbar set red_wool.boss name [\
    {"translate":"red_wool.boss", color:red},\
    " | HP : ", {score:{name:"hp", objective:"red_wool.boss"}, color:"white"}, " | ",\
    {"translate":"red_wool.boss.lore.1", color:red}, {score:{name:"boss_take_damage_muti", objective:"red_wool.boss"}, color:"white"}, {text:" % ", "color":red}\
]

execute at @n[tag = red_wool.center] run fill ~-40 ~52 ~61 ~-38 ~54 ~61 bedrock
execute at @n[tag = red_wool.center] run fill ~-40 ~52 ~67 ~-38 ~54 ~67 bedrock

tellraw @a {translate:"red_wool.boss.init", "color":red}
