
tag @s remove white.victim
execute if score #count white.main matches ..0 run return fail

effect give @s regeneration 8 0 true

# fx
particle minecraft:trial_spawner_detection ~ ~1 ~ 0.3 0.3 0.3 0 10 force
playsound minecraft:block.chorus_flower.grow master @a ~ ~ ~ 1 2
playsound minecraft:block.chorus_flower.grow master @a ~ ~ ~ 1 2
playsound minecraft:block.chorus_flower.grow master @a ~ ~ ~ 1 2