# 執行者：無
# 執行位置：世界重生點

# 讓電芒侍僧執行相關效果
execute as @e[type=stray, tag=brown_wool.thunder_attendant_monk] at @s run function brown_wool:entity/soldiers/thunder_attendant_monk/as_monster

#讓電芒侍僧技能1執行相關效果
execute as @e[type=block_display, tag=brown_wool.thunder_attendant_monk.cast1] at @s run function brown_wool:entity/soldiers/thunder_attendant_monk/as_cast1
execute as @e[type=block_display, tag=brown_wool.thunder_attendant_monk.cast1.2] at @s run function brown_wool:entity/soldiers/thunder_attendant_monk/as_cast1.2


#讓電芒侍僧技能2執行相關效果
execute as @e[type=block_display, tag=brown_wool.thunder_attendant_monk.cast2] at @s run function brown_wool:entity/soldiers/thunder_attendant_monk/as_cast2
