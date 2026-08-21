# 執行者、執行位置是怪物
scoreboard players set @s mini_light.monster_cooldown 200
scoreboard players set @s mini_light.monster_prepare 30
playsound item.spyglass.use hostile @a[distance=..30] ~ ~ ~ 1 1
particle item{item:"iron_chain"} ~ ~1 ~ 0.2 0.2 0.2 0.1 50
particle item{item:"gilded_blackstone"} ~ ~1 ~ 0.2 0.2 0.2 0.1 50





