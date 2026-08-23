
execute on target if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.0] run scoreboard players add @e[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1,limit=1] brown_wool.thunderous_fiend_rift_fang_2.skill1.0 1
execute if data entity @s interaction run data remove entity @s interaction


scoreboard players add @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 1

execute if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 160.. run kill @s




