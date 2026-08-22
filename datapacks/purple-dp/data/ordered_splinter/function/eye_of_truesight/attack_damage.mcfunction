execute as @n[type=#mobs,dx=0,nbt=!{Invulnerable:1b}] run tag @s add wool_purple.eye_target
execute as @e[tag=wool_purple.eye_target] at @s run damage @s 12 ordered_splinter:void by @p[tag=wool_purple.sight_user]
execute as @e[tag=wool_purple.eye_target,tag=wool_purple.monster] at @s run function ordered_splinter:monster/add_tag
execute as @e[tag=wool_purple.eye_target] at @s run particle block{block_state:"minecraft:redstone_block"} ^ ^0.8 ^.1 .3 .2 .3 .2 15
execute as @e[tag=wool_purple.eye_target] at @s run playsound minecraft:item.spear.hit player @a ~ ~ ~ 2 0.1
tag @e[tag=wool_purple.eye_target] remove wool_purple.eye_target