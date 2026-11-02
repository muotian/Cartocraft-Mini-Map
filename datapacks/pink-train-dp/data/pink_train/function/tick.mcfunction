#
execute as @e[tag=pink.train.dummy] at @s run function pink_train:dummy_tick
execute as @e[tag=pink.dummy.damage.item,predicate=pink_train:ground] at @s run function pink_train:kill_text
execute as @e[tag=pink.dummy.damage.text,predicate=!pink_train:ride] at @s run kill @s

#
execute in pink:pink_train positioned -22.0 2.0 -2.0 as @a[dx=0,dy=2,dz=2] in minecraft:overworld run tp @s -205.5 90.0 692.5 0 0
