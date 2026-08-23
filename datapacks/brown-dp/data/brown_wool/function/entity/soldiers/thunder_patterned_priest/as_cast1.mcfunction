# 執行者：霆紋侍祭技能1
# 執行位置：同上

# 增加計時器分數

scoreboard players add @s brown_wool.thunder_patterned_priest.cast1 1
scoreboard players add @s brown_wool.thunder_patterned_priest.cast1.2 1

execute if score @s brown_wool.thunder_patterned_priest.cast1 matches 10.. run rotate @s facing entity @p
execute if score @s brown_wool.thunder_patterned_priest.cast1 matches 10.. run tp @s ^ ^ ^0.15

# 產生粒子效果
particle dust{color:[0.44, 0.89, 1],scale:1.0} ^ ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]

execute if score @s brown_wool.thunder_patterned_priest.cast1 matches 10.. if entity @a[distance=..0.8] run tag @s add brown_wool.thunder_patterned_priest.cast1.2

execute if score @s brown_wool.thunder_patterned_priest.cast1 matches 10.. if entity @s[tag=brown_wool.thunder_patterned_priest.cast1.2] as @a[distance=..1.5] run damage @s 8 brown_wool:bypasses_cooldown by @n[type=stray, tag=brown_wool.thunder_patterned_priest]
execute if score @s brown_wool.thunder_patterned_priest.cast1 matches 10.. if entity @s[tag=brown_wool.thunder_patterned_priest.cast1.2] run particle explosion ~ ~ ~ 0.15 0.15 0.15 0.1 3
execute if score @s brown_wool.thunder_patterned_priest.cast1 matches 10.. if entity @s[tag=brown_wool.thunder_patterned_priest.cast1.2] as @a[distance=..8] run playsound entity.generic.explode player
execute if score @s brown_wool.thunder_patterned_priest.cast1 matches 10.. if entity @s[tag=brown_wool.thunder_patterned_priest.cast1.2] run kill @s

execute if score @s brown_wool.thunder_patterned_priest.cast1.2 matches 1 as @a[distance=..6] run playsound entity.evoker.cast_spell player @s
# 重置記分板
execute if score @s brown_wool.thunder_patterned_priest.cast1 matches 200.. run kill @s
execute if score @s brown_wool.thunder_patterned_priest.cast1.2 matches 10.. run scoreboard players reset @s brown_wool.thunder_patterned_priest.cast1.2

