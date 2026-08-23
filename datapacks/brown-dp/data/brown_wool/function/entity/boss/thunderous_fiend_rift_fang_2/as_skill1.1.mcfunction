


execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1,tag=!brown_wool.thunderous_fiend_rift_fang_2.skill1.02] unless entity @e[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.2] run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang_2.skill1.0 8
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1,tag=!brown_wool.thunderous_fiend_rift_fang_2.skill1.02] unless entity @e[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.2] run tag @s add brown_wool.thunderous_fiend_rift_fang_2.skill1.02


execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1,tag=!brown_wool.thunderous_fiend_rift_fang_2.skill1.03] unless entity @e[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.3] run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang_2.skill1.0 8
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1,tag=!brown_wool.thunderous_fiend_rift_fang_2.skill1.03] unless entity @e[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.3] run tag @s add brown_wool.thunderous_fiend_rift_fang_2.skill1.03


execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1,tag=!brown_wool.thunderous_fiend_rift_fang_2.skill1.04] unless entity @e[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.4] run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang_2.skill1.0 8
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1,tag=!brown_wool.thunderous_fiend_rift_fang_2.skill1.04] unless entity @e[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.4] run tag @s add brown_wool.thunderous_fiend_rift_fang_2.skill1.04


execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1,tag=!brown_wool.thunderous_fiend_rift_fang_2.skill1.05] unless entity @e[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.5] run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang_2.skill1.0 8
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1,tag=!brown_wool.thunderous_fiend_rift_fang_2.skill1.05] unless entity @e[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.5] run tag @s add brown_wool.thunderous_fiend_rift_fang_2.skill1.05

execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1] at @s run tp @a[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.0] @s


execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.0 matches 32.. run effect clear @a[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.0] resistance
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.0 matches 32.. run tag @a remove brown_wool.thunderous_fiend_rift_fang_2.skill1.0
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.0 matches 32.. run kill @e[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.00,tag=!brown_wool.thunderous_fiend_rift_fang_2.skill1.7]

execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.6] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 1.. facing entity @a[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.0,limit=1] feet run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill1.2

execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 100.. positioned ~ ~6 ~ run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle1.1
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 100.. positioned ~ ~-4.9 ~ run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle1.1
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 150.. positioned ~ ~6 ~3 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle1.2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 150.. positioned ~ ~6 ~-3 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle1.2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 150.. positioned ~3 ~6 ~5 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle1.2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 150.. positioned ~-3 ~6 ~-5 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle1.2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 150.. positioned ~3 ~6 ~ run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle1.2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 150.. positioned ~-3 ~6 ~ run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle1.2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 150.. positioned ~5 ~6 ~3 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle1.2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 150.. positioned ~-5 ~6 ~-3 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle1.2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 150.. positioned ~5 ~6 ~-3 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle1.2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 150.. positioned ~-5 ~6 ~3 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle1.2
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 159 positioned ~ ~-4.9 ~ run particle explosion ~ ~ ~ 2.5 2 2.5 0.1 50 force @a

execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 159 run effect clear @a[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.0] resistance
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 159 as @a[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.0,limit=1] run damage @s 30 brown_wool:bypasses_cooldown
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 159 positioned ~ ~-4.9 ~ as @a[tag=brown_wool.thunderous_fiend_rift_fang.player,distance=..6.2] run damage @s 30 brown_wool:bypasses_cooldown
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 159 positioned ~ ~-4.9 ~ as @a[tag=brown_wool.thunderous_fiend_rift_fang.player,distance=..16] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.7] if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 159 run tag @a remove brown_wool.thunderous_fiend_rift_fang_2.skill1.0

execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.1] run effect give @a[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.0,limit=1] resistance 1 255 true

scoreboard players add @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 1

execute if score @s brown_wool.thunderous_fiend_rift_fang_2.skill1.1 matches 160.. run kill @s




