
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.xuan_ting_priest.cast5 1


execute at @e[type=stray, tag=brown_wool.xuan_ting_priest,limit=1] run tp @s ^ ^1 ^0.5 ~ ~

execute if score @s brown_wool.xuan_ting_priest.cast5 matches 120 run kill @s


