execute as @n[tag=aj.graud_golem.root,type=item_display] run function animated_java:graud_golem/animations/summon/play
scoreboard players set @s light_green.boss.animation 41
scoreboard players set @s light_green.boss.attack_type 0
scoreboard players set @s light_green.mob.ai 1
execute at @n[tag=light_green.summon.graud_golem] run forceload add ~-100 ~-100 ~100 ~100