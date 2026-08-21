execute at @n[tag=light_green.summon.graud_golem] positioned ~-7 ~55 ~-2 align xyz run tp @s ~.5 ~ ~.5
rotate @s 180 -45
execute as @n[tag=aj.piglin_girl_npc.root,type=item_display] run function animated_java:piglin_girl_npc/animations/sit/play
scoreboard players set @s light_green.boss.attack_type 1