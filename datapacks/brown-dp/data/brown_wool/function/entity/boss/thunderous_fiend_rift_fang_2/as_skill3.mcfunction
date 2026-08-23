execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill3.1] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill3 matches 45..345 rotated ~ 0 run tp @s ^ ^ ^1 ~2.5 ~
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill3.2] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill3 matches 45..345 rotated ~ 0 run tp @s ^ ^ ^0.7 ~1.75 ~

execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill3.5] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill3 matches 45..345 rotated ~ 0 run tp @s ^ ^ ^1 ~2.5 ~
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill3.6] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill3 matches 45..345 rotated ~ 0 run tp @s ^ ^ ^0.7 ~1.75 ~


execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill3.1] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill3 matches 45..345 facing entity @e[type=block_display,tag=brown_wool.thunderous_fiend_rift_fang_2.skill3.5,limit=1] feet run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill3.2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill3.2] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill3 matches 45..345 facing entity @e[type=block_display,tag=brown_wool.thunderous_fiend_rift_fang_2.skill3.6,limit=1] feet run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill3.2





scoreboard players add @s brown_wool.thunderous_fiend_rift_fang_2.skill3 1


execute if score @s brown_wool.thunderous_fiend_rift_fang_2.skill3 matches 345.. run kill @s
