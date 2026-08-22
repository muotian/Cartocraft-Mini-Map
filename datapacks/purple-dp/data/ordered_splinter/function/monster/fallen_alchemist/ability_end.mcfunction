tag @s remove wool_purple.alchemist_ability
particle tinted_leaves{color:[1.000,0.110,0.824,1.0]} ~ ~1 ~ 0.3 0.3 0.3 5 5
playsound minecraft:block.creaking_heart.spawn hostile @a ~ ~ ~ 2 0.8
scoreboard players set @s wool_purple.monster_attack 0
data modify entity @s Invulnerable set value 0b
data modify entity @s NoAI set value 0b