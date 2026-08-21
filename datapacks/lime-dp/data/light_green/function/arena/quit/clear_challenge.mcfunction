execute at @e[tag=light_green.arena_npc.piglin,limit=1,type=piglin] as @a[tag=light_green.boss.challenger] run tp @s ~ ~ ~
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~ as @e[type=item,distance=..32,tag=!light_green.drop_dirt] at @e[tag=light_green.arena_npc.piglin,limit=1,type=piglin] run tp @s ~ ~ ~
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~ as @e[type=experience_orb,distance=..32] run kill @s
execute as @a[tag=light_green.boss.challenger] run gamemode survival
execute as @a[tag=light_green.boss.challenger] run tag @s remove light_green.boss.challenger