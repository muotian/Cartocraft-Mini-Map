tag @s add green_wool.broken
data merge entity @s {NoAI:1b}
playsound minecraft:entity.iron_golem.damage block @a ~ ~ ~ 1 1
effect give @s minecraft:resistance infinite 255 false

execute if entity @s[tag=green_wool.washing_machine] run summon interaction ~ ~ ~ {height:1.25f,width:1.25f,Tags:[green_wool.dismantle_1]}

#互動實體上
execute if entity @s[tag=!green_wool.washing_machine,tag=!green_wool.security] run summon interaction ~ ~1 ~ {height:1f,width:0.75f,Tags:[green_wool.dismantle_1]}
#保全:tag=green_wool.security
execute if entity @s[tag=green_wool.security] run summon interaction ~ ~1.25 ~ {height:1.25f,width:1.35f,Tags:[green_wool.dismantle_1]}
#互動實體下
execute if entity @s[tag=!green_wool.washing_machine,tag=!green_wool.security] run summon interaction ~ ~ ~ {height:1f,width:0.75f,Tags:[green_wool.dismantle_2]}
#保全:tag=green_wool.security
execute if entity @s[tag=green_wool.security] run summon interaction ~ ~ ~ {height:1.25f,width:1.35f,Tags:[green_wool.dismantle_2]}
