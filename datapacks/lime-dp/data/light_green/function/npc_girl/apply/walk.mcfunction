scoreboard players set @s light_green.boss.animation 95
scoreboard players set @s light_green.piglin_girl_type 2
execute at @n[tag=light_green.summon.graud_golem] positioned ~-6 ~55 ~-5 align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~ ~ ~
execute as @n[tag=aj.piglin_girl_npc.root,type=item_display] run function animated_java:piglin_girl_npc/animations/walk/play
