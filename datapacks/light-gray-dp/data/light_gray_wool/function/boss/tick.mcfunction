# 執行者：無
# 執行位置：世界重生點

# 讓怪物執行相關效果
execute as @e[type=husk, tag=light_gray_wool_boss] at @s run function light_gray_wool:boss/as_monster
execute as @e[tag=light_gray_wool_boss] store result score @s light_gray_wool_boss_hp run data get entity @s Health

execute store result bossbar minecraft:light_gray_wool_boss_hp value run scoreboard players get @e[tag=light_gray_wool_boss,limit=1] light_gray_wool_boss_hp