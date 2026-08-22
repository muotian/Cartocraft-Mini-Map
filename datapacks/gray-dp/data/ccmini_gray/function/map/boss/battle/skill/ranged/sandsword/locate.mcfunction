execute as @s[tag=gray.boss.battle.sandsword_1] run tp ^1 ^-0.2 ^
execute as @s[tag=gray.boss.battle.sandsword_2] run tp ^ ^ ^
execute as @s[tag=gray.boss.battle.sandsword_3] run tp ^-1 ^-0.2 ^
execute at @s run rotate @s facing entity @e[tag=gray.boss_target,limit=1] eyes
execute unless entity @e[tag=gray.boss_target,limit=1] rotated as @e[type=item_display,tag=aj.gray_battle_boss_head.root] run rotate @s ~ ~