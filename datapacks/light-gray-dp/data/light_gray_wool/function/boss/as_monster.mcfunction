# 執行者：範例怪物
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s light_gray_wool.boss_time 1

# 如果分數到的，就施放技能
execute if score @s light_gray_wool.boss_time matches 200 run function light_gray_wool:boss/skill1
execute if score @s light_gray_wool.boss_time matches 400 run function light_gray_wool:boss/skill2
execute if score @s light_gray_wool.boss_time matches 600 run function light_gray_wool:boss/skill3
execute if score @s light_gray_wool.boss_time matches 800 run function light_gray_wool:boss/hurt

# 重置記分板
scoreboard players set @s[scores={light_gray_wool.boss_time=1000..}] light_gray_wool.boss_time 0

execute as @e[type=item_display,tag=aj.light_gray_wool_boss.root,limit=1] at @e[tag=light_gray_wool_boss,limit=1] run tp @s ~ ~ ~ ~ 0

effect give @e[tag=light_gray_wool_boss,limit=1] minecraft:invisibility 1 1 true