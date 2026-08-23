# 執行者：雷紋石傀技能1
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.thunderstone_golem.cast1 1

# 跳和落下
execute if score @s brown_wool.thunderstone_golem.cast1 matches 1..5 if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute if score @s brown_wool.thunderstone_golem.cast1 matches 6..10 if block ~ ~-0.2 ~ air run tp @s ~ ~-0.2 ~
execute if score @s brown_wool.thunderstone_golem.cast1 matches 11 rotated ~ 0 run summon block_display ~0.5 ~-0.1 ~0.5 {block_state:{Name:dirt},Tags:["brown_wool.thunderstone_golem.cast1.2","brown_wool.thunderstone_golem.cast1.01"]}
execute if score @s brown_wool.thunderstone_golem.cast1 matches 11 rotated ~ 0 run summon block_display ~-1.5 ~-0.1 ~0.5 {block_state:{Name:dirt},Tags:["brown_wool.thunderstone_golem.cast1.3","brown_wool.thunderstone_golem.cast1.01"]}
execute if score @s brown_wool.thunderstone_golem.cast1 matches 11 rotated ~ 0 run summon block_display ~-1.5 ~-0.1 ~-1.5 {block_state:{Name:dirt},Tags:["brown_wool.thunderstone_golem.cast1.4","brown_wool.thunderstone_golem.cast1.01"]}
execute if score @s brown_wool.thunderstone_golem.cast1 matches 11 rotated ~ 0 run summon block_display ~0.5 ~-0.1 ~-1.5 {block_state:{Name:dirt},Tags:["brown_wool.thunderstone_golem.cast1.5","brown_wool.thunderstone_golem.cast1.01"]}

# 傷害
execute if score @s brown_wool.thunderstone_golem.cast1 matches 11..13 as @a[distance=..1] run damage @s 14 brown_wool:player_attack by @n[tag=brown_wool.thunderstone_golem.cast1]
execute if score @s brown_wool.thunderstone_golem.cast1 matches 14..16 as @a[distance=..2] run damage @s 14 brown_wool:player_attack by @n[tag=brown_wool.thunderstone_golem.cast1]
execute if score @s brown_wool.thunderstone_golem.cast1 matches 17..19 as @a[distance=..3] run damage @s 14 brown_wool:player_attack by @n[tag=brown_wool.thunderstone_golem.cast1]
execute if score @s brown_wool.thunderstone_golem.cast1 matches 20..22 as @a[distance=..4] run damage @s 14 brown_wool:player_attack by @n[tag=brown_wool.thunderstone_golem.cast1]
execute if score @s brown_wool.thunderstone_golem.cast1 matches 23..25 as @a[distance=..5] run damage @s 14 brown_wool:player_attack by @n[tag=brown_wool.thunderstone_golem.cast1]

# 產生粒子效果
execute if score @s brown_wool.thunderstone_golem.cast1 matches 11 run function brown_wool:entity/soldiers/thunderstone_golem/cast1_particle1.1
execute if score @s brown_wool.thunderstone_golem.cast1 matches 14 run function brown_wool:entity/soldiers/thunderstone_golem/cast1_particle1.2
execute if score @s brown_wool.thunderstone_golem.cast1 matches 17 run function brown_wool:entity/soldiers/thunderstone_golem/cast1_particle1.3
execute if score @s brown_wool.thunderstone_golem.cast1 matches 20 run function brown_wool:entity/soldiers/thunderstone_golem/cast1_particle1.4
execute if score @s brown_wool.thunderstone_golem.cast1 matches 23 run function brown_wool:entity/soldiers/thunderstone_golem/cast1_particle1.5

# 效果
effect give @s resistance 1 5 true

# 重置記分板
execute if score @s brown_wool.thunderstone_golem.cast1 matches 25.. run data modify entity @s NoAI set value false
execute if score @s brown_wool.thunderstone_golem.cast1 matches 25.. run attribute @s knockback_resistance base reset 
execute if score @s brown_wool.thunderstone_golem.cast1 matches 25.. run effect clear @s resistance
execute if score @s brown_wool.thunderstone_golem.cast1 matches 25.. run tag @s remove brown_wool.thunderstone_golem.cast1
scoreboard players reset @s[scores={brown_wool.thunderstone_golem.cast1=25..}] brown_wool.thunderstone_golem.cast1


