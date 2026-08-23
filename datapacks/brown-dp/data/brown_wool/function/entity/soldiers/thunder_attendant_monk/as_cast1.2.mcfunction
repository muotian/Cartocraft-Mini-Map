# 執行者：電芒侍僧技能1.01
# 執行位置：同上

#發射
execute unless score @s brown_wool.thunder_attendant_monk.cast1.2 matches 1.. run rotate @s facing ~ ~-1 ~
tp @s ~ ~-0.5 ~

#消失
scoreboard players add @s brown_wool.thunder_attendant_monk.cast1.2 1
execute if score @s brown_wool.thunder_attendant_monk.cast1.2 matches 20.. run kill @s






