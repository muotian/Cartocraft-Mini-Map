execute positioned ~-.5 ~-.5 ~-.5 as @n[type=#mobs,dx=0,nbt=!{Invulnerable:1b}] run tag @s add wool_purple.eye_ability_target
execute as @e[tag=wool_purple.eye_ability_target] at @s run damage @s 0.25 ordered_splinter:void by @p
execute as @e[tag=wool_purple.eye_ability_target,tag=wool_purple.monster] at @s run function ordered_splinter:monster/add_tag
execute as @e[tag=wool_purple.eye_ability_target] at @s run particle block{block_state:"minecraft:redstone_block"} ^ ^0.8 ^.1 .3 .2 .3 .2 1
tag @e[tag=wool_purple.eye_ability_target] remove wool_purple.eye_ability_target