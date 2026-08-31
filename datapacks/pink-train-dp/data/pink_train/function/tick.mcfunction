#
execute as @e[tag=pink.train.dummy] at @s run function pink_train:dummy_tick
execute as @e[tag=pink.dummy.damage.item,predicate=pink_train:ground] at @s run function pink_train:kill_text
execute as @e[tag=pink.dummy.damage.text,predicate=!pink_train:ride] at @s run kill @s

#
execute positioned 184 -59 -22 as @a[distance=..2] at @s in overworld run tp @s -61 51 -16