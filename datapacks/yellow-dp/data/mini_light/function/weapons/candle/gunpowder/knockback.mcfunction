# 執行者、執行位置是玩家
scoreboard players set @e[tag=attacked] mini_light.knockback_trail 8
execute positioned 0.0 0.0 0.0 rotated as @s rotated ~ -15 as 00000007-0000-0006-0000-000500000004 run tp ^ ^ ^1.7
data modify entity @n[tag=attacked,tag=!boss4] Motion set from entity 00000007-0000-0006-0000-000500000004 Pos
execute as 00000007-0000-0006-0000-000500000004 run tp @s 0.0 0.0 0.0 0 0