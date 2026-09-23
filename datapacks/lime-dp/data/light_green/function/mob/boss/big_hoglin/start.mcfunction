function light_green:arena/difficulty/get

tag @s add light_green.boss.challenger
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~35 ~-27 run function light_green:mob/boss/big_hoglin/summon
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~35 ~27 as @a[tag=light_green.boss.challenger] run tp @s ~ ~ ~
execute as @a[tag=light_green.boss.challenger] run gamemode adventure