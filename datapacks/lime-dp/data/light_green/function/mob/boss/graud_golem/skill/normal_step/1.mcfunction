$execute as @n[tag=aj.graud_golem.root,type=item_display] run function animated_java:graud_golem/animations/step$(leg)/play
$scoreboard players set $step light_green.main.math $(leg)
scoreboard players set @s light_green.boss.attack_type 12
scoreboard players set @s light_green.boss.animation 16