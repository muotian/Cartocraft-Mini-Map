damage @s 12 mob_attack by @n[tag=wool_purple.demon_guard]
playsound minecraft:block.creaking_heart.spawn hostile @a ~ ~ ~ 2 1.2
playsound block.honey_block.break player @a ~ ~ ~ 2 1.2
playsound minecraft:entity.wither.break_block player @a ~ ~ ~ 2 0.8
playsound minecraft:entity.elder_guardian.flop player @a ~ ~ ~ 2 0.1
particle block{block_state:"minecraft:redstone_block"} ^ ^0.8 ^.1 0.3 0.01 0.3 .2 15
tag @s add wool_purple.sword_radiance_damage_cd
tag @s remove wool_purple.sword_radiance_target