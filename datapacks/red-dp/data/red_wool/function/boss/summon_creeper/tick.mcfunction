execute unless entity @n[tag = red_wool.boss.creeper] run function red_wool:boss/summon_creeper/good_end

scoreboard players remove creeper red_wool.boss 1
execute store result bossbar minecraft:red_wool.boss.creeper value run scoreboard players get creeper red_wool.boss

execute if score creeper red_wool.boss matches ..0 run function red_wool:boss/summon_creeper/bad_end