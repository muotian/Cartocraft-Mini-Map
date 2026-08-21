execute as @n[tag=aj.graud_golem.root,type=item_display] run function animated_java:graud_golem/animations/step2/play
kill @n[tag=light_green.stone_stick,scores={light_green.mob.ai=3}]
scoreboard players set @s light_green.boss.attack_type 9
scoreboard players set @s light_green.boss.animation 16