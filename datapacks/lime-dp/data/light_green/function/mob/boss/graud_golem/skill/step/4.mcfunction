execute as @n[tag=aj.graud_golem.root,type=item_display] run function animated_java:graud_golem/animations/step4/play
kill @n[tag=light_green.stone_stick,scores={light_green.mob.ai=4}]
scoreboard players set @s light_green.boss.attack_type 10
scoreboard players set @s light_green.boss.animation 16