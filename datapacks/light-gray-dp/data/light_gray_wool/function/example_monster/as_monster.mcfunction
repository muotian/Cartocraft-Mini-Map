# 執行者：範例怪物
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s light_gray_wool.monster_time 1


# 如果分數到的，就施放技能
execute if score @s light_gray_wool.monster_time matches 200.. run function light_gray_wool:example_monster/cast

# 重置記分板
scoreboard players set @s[scores={light_gray_wool.monster_time=200..}] light_gray_wool.monster_time 0