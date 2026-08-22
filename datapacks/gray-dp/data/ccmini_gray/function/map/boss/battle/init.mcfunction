execute as @e[type=marker,tag=gray.boss.battle.summon_boss_pos,limit=1] at @s run function ccmini_gray:map/boss/battle/summon
bossbar set minecraft:gray.boss.hp_display max 500
bossbar set minecraft:gray.boss.hp_display players @a
scoreboard players set $attack.cd gray.boss.data 50
scoreboard players set $hp gray.boss.data 500
scoreboard players reset $force_feet_animated gray.boss.data
bossbar set gray.boss.hp_display visible true

#招喚位子marker
#summon marker ~ ~ ~ {Tags:[gray.boss.battle.summon_boss_pos]}