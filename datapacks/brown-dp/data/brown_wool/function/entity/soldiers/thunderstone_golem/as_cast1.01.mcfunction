# 執行者：雷紋石傀技能1.01
# 執行位置：同上

#發射
execute if entity @s[tag=brown_wool.thunderstone_golem.cast1.2] if score @s brown_wool.thunderstone_golem.cast1.01 matches 1..8 run tp @s ^0.15 ^0.15 ^0.15
execute if entity @s[tag=brown_wool.thunderstone_golem.cast1.3] if score @s brown_wool.thunderstone_golem.cast1.01 matches 1..8 run tp @s ^-0.15 ^0.15 ^0.15
execute if entity @s[tag=brown_wool.thunderstone_golem.cast1.4] if score @s brown_wool.thunderstone_golem.cast1.01 matches 1..8 run tp @s ^-0.15 ^0.15 ^-0.15
execute if entity @s[tag=brown_wool.thunderstone_golem.cast1.5] if score @s brown_wool.thunderstone_golem.cast1.01 matches 1..8 run tp @s ^0.15 ^0.15 ^-0.15
execute if entity @s[tag=brown_wool.thunderstone_golem.cast1.2] if score @s brown_wool.thunderstone_golem.cast1.01 matches 9..18 run tp @s ^0.15 ^-0.15 ^0.15
execute if entity @s[tag=brown_wool.thunderstone_golem.cast1.3] if score @s brown_wool.thunderstone_golem.cast1.01 matches 9..18 run tp @s ^-0.15 ^-0.15 ^0.15
execute if entity @s[tag=brown_wool.thunderstone_golem.cast1.4] if score @s brown_wool.thunderstone_golem.cast1.01 matches 9..18 run tp @s ^-0.15 ^-0.15 ^-0.15
execute if entity @s[tag=brown_wool.thunderstone_golem.cast1.5] if score @s brown_wool.thunderstone_golem.cast1.01 matches 9..18 run tp @s ^0.15 ^-0.15 ^-0.15

#消失
scoreboard players add @s brown_wool.thunderstone_golem.cast1.01 1
execute if score @s brown_wool.thunderstone_golem.cast1.01 matches 18 run kill @s

