scoreboard players remove @s red_wool.bgm 1
execute if score @s red_wool.bgm matches ..0 if predicate red_wool:in_boss_area if score hp red_wool.boss matches 1.. run function red_wool:system/bgm/boss_bgm

execute unless predicate red_wool:in_boss_area run scoreboard players set @s red_wool.bgm 0