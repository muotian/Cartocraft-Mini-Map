# 執行者：雷紋衛士
# 執行位置：同上

# cast: 施放技能

# 重置記分板
scoreboard players set @s brown_wool.thunder_guardian.ready 0

# cd
scoreboard players set @s brown_wool.thunder_guardian.cd 160

# 加技能2 tag
attribute @s knockback_resistance base set 1
data modify entity @s NoAI set value true
tag @s add brown_wool.thunder_guardian.cast2

execute at @s as @a[distance=..6] run playsound entity.firework_rocket.launch master @s


